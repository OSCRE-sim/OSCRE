#!/bin/bash

# Function to print an error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}

# Variables for paths
BASE_DIR=$(pwd)
INCLUDE_DIR="${BASE_DIR}/include"
INSTALL_SCRIPTS_DIR="${BASE_DIR}/Install Scripts"

# Check if the required tar.gz files exist
if [ ! -f "${INCLUDE_DIR}/tcl8.6.13-src.tar.gz" ]; then
    error_exit "Tcl source file not found at ${INCLUDE_DIR}/tcl8.6.13-src.tar.gz"
fi

if [ ! -f "${INCLUDE_DIR}/tk8.6.13-src.tar.gz" ]; then
    error_exit "Tk source file not found at ${INCLUDE_DIR}/tk8.6.13-src.tar.gz"
fi

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || error_exit "Failed to install Homebrew."
fi

# Install Xquartz
echo "Installing Xquartz..."
brew install --cask xquartz || error_exit "Failed to install Xquartz."

# Install required packages
echo "Installing required packages..."
brew install cairo ngspice libxpm macvim dbus jpeg || error_exit "Failed to install required packages."
brew services start dbus

# Set environment variables for JPEG
export LDFLAGS="-L/usr/local/opt/jpeg/lib"
export CPPFLAGS="-I/usr/local/opt/jpeg/include"

# Add environment variables to shell configuration (do not run as root)
echo "Updating shell configuration..."
SHELL_CONFIG=""
if [ -f ~/.bashrc ]; then
    SHELL_CONFIG="$HOME/.bashrc"
elif [ -f ~/.zshrc ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    echo "Neither ~/.bashrc nor ~/.zshrc found. The following are being run manually:
export DYLD_LIBRARY_PATH=\"/usr/local/opt/tcl-tk/lib:/opt/X11/lib\"
export PATH=\"/Users/$(whoami)/opt/xschem/bin:\$PATH\"
export DISPLAY=:0"
    echo "Please add the above lines to .bashrc or .zshrc when possible"
    export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib"
    export PATH="/Users/$(whoami)/opt/xschem/bin:$PATH"
    export DISPLAY=:0
fi

if [ -n "$SHELL_CONFIG" ]; then
    if ! grep -q 'export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib"' "$SHELL_CONFIG"; then
        echo 'export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib"' >> "$SHELL_CONFIG"
    fi

    if ! grep -q 'export PATH="/Users/$(whoami)/opt/xschem/bin:$PATH"' "$SHELL_CONFIG"; then
        echo 'export PATH="/Users/$(whoami)/opt/xschem/bin:$PATH"' >> "$SHELL_CONFIG"
    fi

    if ! grep -q 'export DISPLAY=:0' "$SHELL_CONFIG"; then
        echo 'export DISPLAY=:0' >> "$SHELL_CONFIG"
    fi
fi

# Extract and compile Tcl
echo "Compiling Tcl..."
mkdir -p /usr/local/opt/tcl-tk
tar -xzf "${INCLUDE_DIR}/tcl8.6.13-src.tar.gz" -C /tmp || error_exit "Failed to extract Tcl."
cd /tmp/tcl8.6.13/unix || error_exit "Tcl source directory not found."
./configure --prefix=/usr/local/opt/tcl-tk || error_exit "Failed to configure Tcl."
make || error_exit "Failed to make Tcl."
make install || error_exit "Failed to install Tcl."

# Extract and compile Tk
echo "Compiling Tk..."
tar -xzf "${INCLUDE_DIR}/tk8.6.13-src.tar.gz" -C /tmp || error_exit "Failed to extract Tk."
cd /tmp/tk8.6.13/unix || error_exit "Tk source directory not found."
./configure --prefix=/usr/local/opt/tcl-tk --with-tcl=/usr/local/opt/tcl-tk/lib --with-x --x-includes=/opt/X11/include --x-libraries=/opt/X11/lib || error_exit "Failed to configure Tk."
make || error_exit "Failed to make Tk."
make install || error_exit "Failed to install Tk."

# Symlink libtk
sudo ln -s /usr/local/opt/tcl-tk/lib/libtk8.6.dylib /opt/X11/lib/libtk8.6.dylib || error_exit "Failed to symlink libtk."

# Clone xschem
echo "Cloning xschem repository..."
git clone https://github.com/StefanSchippers/xschem.git /tmp/xschem || error_exit "Failed to clone xschem repository."
cd /tmp/xschem || error_exit "xschem directory not found."

# Configure xschem
echo "Configuring xschem..."
./configure --prefix="/Users/$(whoami)/opt/xschem" || error_exit "Failed to configure xschem."

# Modify Makefile.conf
echo "Modifying Makefile.conf..."
sed -i.bak 's|CFLAGS=.*|CFLAGS=-std=c99 -I/opt/X11/include -I/opt/X11/include/cairo -I/usr/local/opt/tcl-tk/include -I/usr/local/include -I/usr/local/opt/jpeg/include -O2|' Makefile.conf
sed -i.bak 's|LDFLAGS=.*|LDFLAGS=-L/opt/X11/lib -L/usr/local/opt/tcl-tk/lib -L/usr/local/lib -L/usr/local/opt/jpeg/lib -lm -lcairo -ljpeg -lX11 -lXrender -lxcb -lxcb-render -lX11-xcb -lXpm -ltcl8.6 -ltk8.6|' Makefile.conf

# Build xschem
echo "Building xschem..."
make clean || error_exit "Failed to clean xschem build."
make || error_exit "Failed to build xschem."

# Install xschem
echo "Installing xschem..."
make install || error_exit "Failed to install xschem."

echo "xschem installation completed successfully."
