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
brew install gtk+3 cairo pango autoconf automake libtool pkg-config at-spi2-core gdk-pixbuf || error_exit "Failed to install dependencies."

# Ensure pkg-config paths are set correctly
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig:/usr/local/opt/gtk+3/lib/pkgconfig:$PKG_CONFIG_PATH"

if [ -d "/tmp/xschem-gaw" ]; then
    echo "xschem-gaw already exist, clearing previous version"
    sudo rm -rf "/tmp/xschem-gaw" || error_exit "Failed to remove xschem-gaw directory."
fi

# Clone the xschem-gaw repository (do not run as root)
echo "Cloning xschem-gaw repository..."
git clone https://github.com/StefanSchippers/xschem-gaw.git /tmp/xschem-gaw || error_exit "Failed to clone xschem-gaw repository."
cd /tmp/xschem-gaw || error_exit "Failed to navigate to xschem-gaw directory."
git checkout 640c672e1ad768b92eb6a15943459a1d2214e1dc || error_exit "Failed to checkout the specific commit for xschem-gaw."

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

# String to be added
STRING_TO_ADD='export NO_AT_BRIDGE=1'

# Check if the string already exists in the shell configuration file
if ! grep -qxF "$STRING_TO_ADD" "$SHELL_CONFIG"; then
  echo "$STRING_TO_ADD" >> "$SHELL_CONFIG"
  echo "Added '$STRING_TO_ADD' to $SHELL_CONFIG"
else
  echo "'$STRING_TO_ADD' already exists in $SHELL_CONFIG"
fi

# Source the updated shell configuration (do not run as root)
echo "Sourcing the updated shell configuration..."
source "$SHELL_CONFIG" || error_exit "Failed to source $SHELL_CONFIG."

echo "GTK Analog Wave Viewer (gaw) installation completed successfully."
echo "You can now run 'gaw' to start the GTK Analog Wave Viewer."
