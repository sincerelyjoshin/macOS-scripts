#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 79 "{ enabled = 0; }"

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 80 "{ enabled = 0; }"

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 81 "{ enabled = 0; }"

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 82 "{ enabled = 0; }"

exit 0
