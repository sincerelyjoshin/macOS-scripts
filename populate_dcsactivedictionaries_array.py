#!/usr/bin/python
'''This script populates the DCSActiveDictionaries array in com.apple.DictionaryServices'''

import os
import pwd
import subprocess

# pylint: disable=no-name-in-module
from CoreFoundation import CFPreferencesCopyAppValue
from CoreFoundation import CFPreferencesSetAppValue
from Foundation import NSMutableArray
from SystemConfiguration import SCDynamicStoreCopyConsoleUser

def get_console_user():
    '''returns current logged in username'''
    cfuser = SCDynamicStoreCopyConsoleUser(None, None, None)
    return cfuser[0]

def run_subp(command):
    '''run subprocess'''
    if isinstance(command, basestring):
        raise TypeError('Command must be an array')
    proc = subprocess.Popen(command,
                            stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT)
    (out, err) = proc.communicate(input)
    result_dict = {
        "stdout": out,
        "stderr": err,
        "status": proc.returncode,
        "success": True if proc.returncode == 0 else False
    }
    return result_dict

CONSOLE_USER = get_console_user()
USER_ID = pwd.getpwnam(CONSOLE_USER).pw_uid

os.seteuid(USER_ID)

# read the current DCSActiveDictionaries array from com.apple.DictionaryServices
DICTIONARIES = CFPreferencesCopyAppValue("DCSActiveDictionaries", "com.apple.DictionaryServices")

if DICTIONARIES:
    # dictionaries is an immutable array, so we have to make a mutable copy
    MY_DICTIONARIES = NSMutableArray.alloc().initWithArray_copyItems_(DICTIONARIES, True)
else:
    # create an empty mutable array
    MY_DICTIONARIES = []

if 'com.apple.dictionary.NOAD' not in MY_DICTIONARIES:
    MY_DICTIONARIES.append('com.apple.dictionary.NOAD')
if 'com.apple.dictionary.OAWT' not in MY_DICTIONARIES:
    MY_DICTIONARIES.append('com.apple.dictionary.OAWT')

# write DSCActiveDictionaries array to com.apple.DictionaryServices
CFPreferencesSetAppValue("DCSActiveDictionaries", MY_DICTIONARIES, "com.apple.DictionaryServices")

# open Dictionary.app as console user
run_subp(["open", "-a", "/Applications/Dictionary.app"])

exit()