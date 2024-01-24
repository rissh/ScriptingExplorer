#!/bin/bash

# Function to check package availability and installation date
check_package() {
    local package_name=$1

    # Check if the package is installed
    if rpm -q "$package_name" &>/dev/null; then
        # Get installation date of the package
        local install_date=$(rpm -q --last "$package_name" | awk '{print $1}')
        echo "Package '$package_name' is already installed. Installed on: $install_date"
    else
        # Install the package
        echo "Package '$package_name' is not installed. Installing..."
        sudo yum install -y "$package_name"

        # Check if the installation was successful
        if [ $? -eq 0 ]; then
            echo "Package '$package_name' has been successfully installed."
        else
            echo "Error: Unable to install '$package_name'. Please check your package manager."
            exit 1
        fi
    fi
}

# Set a default package name
default_package_name="example-package"

# Use the provided package name or the default if none is provided
package_name="${1:-$default_package_name}"

# Check for the presence of the specified package
check_package "$package_name"
