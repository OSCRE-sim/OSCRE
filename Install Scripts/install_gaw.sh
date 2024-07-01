#!/bin/bash

# Function to print an error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}

# Install Homebrew if not installed (do not run as root)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || error_exit "Failed to install Homebrew."
fi

# Install dependencies (do not run as root)
echo "Installing dependencies..."
brew install gtk+3 cairo pango autoconf automake libtool pkg-config at-spi2-core || error_exit "Failed to install dependencies."

# Clone the xschem-gaw repository (do not run as root)
echo "Cloning xschem-gaw repository..."
git clone https://github.com/StefanSchippers/xschem-gaw.git || error_exit "Failed to clone xschem-gaw repository."
cd xschem-gaw || error_exit "xschem-gaw directory not found."

# Generate configuration files and build (do not run as root)
echo "Generating configuration files and building..."
autoreconf --install || error_exit "Failed to run autoreconf."
automake --add-missing || error_exit "Failed to run automake."
./configure || error_exit "Failed to configure."
make || error_exit "Failed to make."
sudo make install || error_exit "Failed to install gaw."

# Add NO_AT_BRIDGE to bashrc or zshrc (do not run as root)
echo "Updating shell configuration..."
SHELL_CONFIG=""
if [ -f ~/.bashrc ]; then
    SHELL_CONFIG=~/.bashrc
elif [ -f ~/.zshrc ]; then
    SHELL_CONFIG=~/.zshrc
else
    error_exit "Neither ~/.bashrc nor ~/.zshrc found. Please add 'export NO_AT_BRIDGE=1' manually."
fi

echo 'export NO_AT_BRIDGE=1' >> "$SHELL_CONFIG"

# Source the updated shell configuration (do not run as root)
echo "Sourcing the updated shell configuration..."
source "$SHELL_CONFIG" || error_exit "Failed to source $SHELL_CONFIG."

echo "GTK Analog Wave Viewer (gaw) installation completed successfully."
echo "You can now run 'gaw' to start the GTK Analog Wave Viewer."