#!/bin/bash
# Function to print an error message and exit
function error_exit { echo "$1" 1>&2 exit 1 }

# Check if running as root
if [ "$EUID" -ne 0 ]; then echo "Please run as root" exit 1 fi

# Variables for paths
BASE_DIR=$(pwd) INCLUDE_DIR="${BASE_DIR}/include" INSTALL_SCRIPTS_DIR="${BASE_DIR}/Install Scripts"

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then echo "Installing Homebrew..." /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || error_exit "Failed to 
    install Homebrew."
fi

# Install Xquartz
echo "Installing Xquartz..." brew install --cask xquartz || error_exit "Failed to install Xquartz."

# Install required packages
echo "Installing required packages..." brew install cairo ngspice libxpm macvim dbus jpeg || error_exit "Failed to install required packages."

# Set environment variables
echo "Setting environment variables..." export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib" echo 'export DYLD_LIBRARY_PATH="/usr/local/opt/tcl-tk/lib:/opt/X11/lib"' >> ~/.bashrc 
echo 'export PATH="/Users/$(whoami)/opt/xschem/bin:$PATH"' >> ~/.bashrc echo 'export DISPLAY=:0' >> ~/.bashrc

# Extract and compile Tcl
echo "Compiling Tcl..." mkdir -p /usr/local/opt/tcl-tk tar -xzf "${INCLUDE_DIR}/tcl8.6.13-src.tar.gz" -C /tmp || error_exit "Failed to extract Tcl." cd /tmp/tcl8.6.13/unix || error_exit "Tcl 
source directory not found." ./configure --prefix=/usr/local/opt/tcl-tk || error_exit "Failed to configure Tcl." make || error_exit "Failed to make Tcl." make install || error_exit "Failed to 
install Tcl."

# Extract and compile Tk
echo "Compiling Tk..." tar -xzf "${INCLUDE_DIR}/tk8.6.13-src.tar.gz" -C /tmp || error_exit "Failed to extract Tk." cd /tmp/tk8.6.13/unix || error_exit "Tk source directory not found." 
./configure --prefix=/usr/local/opt/tcl-tk --with-tcl=/usr/local/opt/tcl-tk/lib --with-x --x-includes=/opt/X11/include --x-libraries=/opt/X11/lib || error_exit "Failed to configure Tk." make || 
error_exit "Failed to make Tk." make install || error_exit "Failed to install Tk."

# Symlink libtk
sudo ln -s /usr/local/opt/tcl-tk/lib/libtk8.6.dylib /opt/X11/lib/libtk8.6.dylib || error_exit "Failed to symlink libtk."

# Clone xschem
echo "Cloning xschem repository..." git clone https://github.com/StefanSchippers/xschem.git /tmp/xschem || error_exit "Failed to clone xschem repository." cd /tmp/xschem || error_exit "xschem 
directory not found."

# Configure xschem
echo "Configuring xschem..." ./configure --prefix="/Users/$(whoami)/opt/xschem" || error_exit "Failed to configure xschem."

# Modify Makefile.conf
echo "Modifying Makefile.conf..." sed -i.bak 's|CFLAGS=.*|CFLAGS=-std=c99 -I/opt/X11/include -I/opt/X11/include/cairo -I/usr/local/opt/tcl-tk/include -I/usr/local/include 
-I/opt/homebrew/Cellar/jpeg/9f/include -O2|' Makefile.conf sed -i.bak 's|LDFLAGS=.*|LDFLAGS=-L/opt/X11/lib -L/usr/local/opt/tcl-tk/lib -L/usr/local/lib -L/opt/homebrew/Cellar/jpeg/9f/lib -lm 
-lcairo -ljpeg -lX11 -lXrender -lxcb -lxcb-render -lX11-xcb -lXpm -ltcl8.6 -ltk8.6|' Makefile.conf

# Build xschem
echo "Building xschem..." make clean || error_exit "Failed to clean xschem build." make || error_exit "Failed to build xschem."

# Install xschem
echo "Installing xschem..." make install || error_exit "Failed to install xschem."
echo "xschem installation completed successfully."
