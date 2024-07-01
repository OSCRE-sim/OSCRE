#!/bin/bash

# Function to print an error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}

# Check if running as root (only for necessary commands)
# function check_root {
#     if [ "$EUID" -ne 0 ]; then
#         echo "Please run as root for this section"
#         exit 1
#     fi
# }

echo "Starting uninstallation process..."

# Uninstall xschem
echo "Uninstalling xschem..."
if [ -d "/Users/$(whoami)/opt/xschem" ]; then
    sudo rm -rf "/Users/$(whoami)/opt/xschem" || error_exit "Failed to remove xschem directory."
fi

# Uninstall Tcl and Tk
echo "Uninstalling Tcl and Tk..."
if [ -d "/usr/local/opt/tcl-tk" ]; then
    sudo rm -rf "/usr/local/opt/tcl-tk" || error_exit "Failed to remove Tcl-Tk directory."
fi

# Remove symlink for libtk
echo "Removing symlink for libtk..."
if [ -L "/opt/X11/lib/libtk8.6.dylib" ]; then
    sudo rm "/opt/X11/lib/libtk8.6.dylib" || error_exit "Failed to remove symlink for libtk."
fi

# Uninstall dependencies installed by Homebrew
echo "Uninstalling Homebrew dependencies..."
brew uninstall cairo ngspice libxpm macvim dbus jpeg gtk+3 pango autoconf automake libtool pkg-config at-spi2-core || error_exit "Failed to uninstall some Homebrew dependencies."
# brew uninstall --ignore-dependencies cairo ngspice libxpm macvim dbus jpeg gtk+3 pango autoconf automake libtool pkg-config at-spi2-core || error_exit "Failed to uninstall some Homebrew dependencies."

# Uninstall Xquartz
echo "Uninstalling Xquartz..."
brew uninstall --cask xquartz || error_exit "Failed to uninstall Xquartz."

# Remove xschem-gaw installation
echo "Uninstalling xschem-gaw..."
if [ -d "/tmp/xschem-gaw" ]; then
    sudo rm -rf "/tmp/xschem-gaw" || error_exit "Failed to remove xschem-gaw directory."
fi

# Remove NO_AT_BRIDGE from bashrc or zshrc
echo "Updating shell configuration..."
if [ -f ~/.bashrc ]; then
    SHELL_CONFIG=~/.bashrc
elif [ -f ~/.zshrc ]; then
    SHELL_CONFIG=~/.zshrc
else
    echo "Neither ~/.bashrc nor ~/.zshrc found. Please remove 'export NO_AT_BRIDGE=1' manually."
fi

if [ -n "$SHELL_CONFIG" ]; then
    sed -i '' '/export NO_AT_BRIDGE=1/d' "$SHELL_CONFIG"
fi

# Source the updated shell configuration (do not run as root)
echo "Sourcing the updated shell configuration..."
source "$SHELL_CONFIG" || error_exit "Failed to source $SHELL_CONFIG."

echo "Uninstallation process completed successfully."
