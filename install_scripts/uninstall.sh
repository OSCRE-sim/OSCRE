#!/bin/bash

CURRENT_DIR = "$PWD"

# Function to print an error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}


# Detect the operating system
OS_TYPE=$(uname)
KERNEL_INFO=$(uname -r)

if [ "$OS_TYPE" == "Darwin" ]; then
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
    if [ -d "/Users/$(whoami)/.xschem" ]; then
        sudo rm -rf "/Users/$(whoami)/.xschem" || error_exit "Failed to remove .xschem directory."
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
    
    
    # REMOVE BeSpice Wave
    # Uninstall Analog Flavor application
    if [ -d "/Applications/Analog Flavor.app" ]; then
        echo "Uninstalling Analog Flavor application..."
        sudo rm -rf "/Applications/Analog Flavor.app" || error_exit "Failed to remove Analog Flavor application."
    fi
    
    if [ -d "~/analog_flavor_eval" ]; then
        sudo rm -rf "~/analog_flavor_eval" || error_exit "Failed to remove Analog Flavor folder."
    fi
    
    
    # REMOVE MAGIC and OPEN_PDKs
    echo "Uninstalling Magic and open_pdks directories"
    if [ -d "$CURRENT_DIR/magic" ]; then
        sudo rm -rf "$CURRENT_DIR/magic" || error_exit "Failed to remove magic directory."
    fi
    if [ -d "$CURRENT_DIR/open_pdks" ]; then
        sudo rm -rf "$CURRENT_DIR/open_pdks" || error_exit "Failed to remove open_pdks directory."
    fi
    if [ -d "/usr/local/share/pdk" ]; then
        sudo rm -rf "/usr/local/share/pdk" || error_exit "Failed to remove shared pdk directory."
    fi
    
    
    # REMOVE PDKs LINK
    # Directory containing the source files and directories
    SOURCE_DIR="./open_pdks/sources"
    
    # Target directory for the symbolic links
    TARGET_DIR="/usr/local/share"
    
    
    # Remove the symlinks in the target directory that point to the source directory
    for dir in $SOURCE_DIR/*; do
        # Extract just the directory name
        dir_name=$(basename "$dir")
        # Path to the potential symlink in the target directory
        symlink_path="$TARGET_DIR/$dir_name"
        # Check if the symlink exists and is indeed a symlink
        if [ -L "$symlink_path" ]; then
            # Remove the symlink
            echo "Removing symlink: $symlink_path"
            rm "$symlink_path"
        else
            echo "No symlink found for $symlink_path, skipping..."
        fi
    done
    
    
    # REMOVE VENV
    if [ -d "~/my_venv_pdk_rad_hard" ]; then
        sudo rm -rf "~/my_venv_pdk_rad_hard" || error_exit "Failed to remove venv my_venv_pdk_rad_hard."
    fi
    
    
    echo "Uninstallation process completed successfully."
else
    error_exit "Unsupported operating system. This script supports macOS only."
fi
