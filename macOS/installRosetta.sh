#!/bin/zsh

function install_rosetta()
{
	mac_architecture="$(uname -m)"
	if [ ${mac_architecture} = "arm64" ]; then
		if /usr/bin/pgrep oahd >/dev/null 2>&1; then
			echo "Rosetta Installed"
		else
			echo "Install Rosetta"
		fi
	fi
}

install_rosetta

exit 0