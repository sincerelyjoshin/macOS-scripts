#!/bin/bash

function install_xcode_command_line_tools()
{
	if [ ! -e /Library/Developer/CommandLineTools/ ]; then
		/usr	/bin/xcode-select --install
	fi
}

install_xcode_command_line_tools

exit 0