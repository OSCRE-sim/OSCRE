#!/bin/bash

# Function to print an error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}

echo "Starting uninstallation process..."

# Remove xschem-gaw installation
if [ -d "/tmp/xschem-gaw" ]; then
    echo "Uninstalling xschem-gaw..."
    sudo rm -rf "/tmp/xschem-gaw" || error_exit "Failed to remove xschem-gaw directory."
fi

# Uninstall xschem
echo "Uninstalling xschem..."
if [ -d "/Users/$(whoami)/opt/xschem" ]; then
    sudo rm -rf "/Users/$(whoami)/opt/xschem" || error_exit "Failed to remove xschem directory."
fi
if [ -d "/tmp/xschem" ]; then
    sudo rm -rf "/tmp/xschem" || error_exit "Failed to remove xschem directory."
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
for pkg in cairo ngspice libxpm macvim dbus jpeg gtk+3 pango autoconf automake libtool pkg-config at-spi2-core; do
    if brew list --formula | grep -q "^$pkg\$"; then
        echo "Uninstalling $pkg..."
        brew uninstall --ignore-dependencies "$pkg" || error_exit "Failed to uninstall $pkg."
    else
        echo "$pkg is not installed, skipping..."
    fi
done

# Remove specific directories if they exist
echo "Removing specific directories..."
rm -rf /usr/local/etc/openssl@3
rm -rf /usr/local/etc/ca-certificates
rm -rf /usr/local/etc/pmix-mca-params.conf
rm -rf /usr/local/etc/dbus-1

# Uninstall Xquartz
echo "Uninstalling Xquartz..."
brew uninstall --cask xquartz || error_exit "Failed to uninstall Xquartz."

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

# Uninstall Analog Flavor application
if [ -d "/Applications/Analog Flavor.app" ]; then
    echo "Uninstalling Analog Flavor application..."
    sudo rm -rf "/Applications/Analog Flavor.app" || error_exit "Failed to remove Analog Flavor application."
fi

echo "Uninstallation process completed successfully."
