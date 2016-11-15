#!/bin/sh

#Google DefaultPaperID to find a list of strings domain recognizes. I went with US letter because 'Merica.

/usr/bin/defaults write /Library/Preferences/org.cups.PrintingPrefs DefaultPaperID na-letter
