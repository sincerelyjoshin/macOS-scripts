#!/bin/bash

targetApp="/Path/To/Targe/Application.app"

if [ -d "${targetApp}" ]
  then
    echo "${targetApp} found on disk"
    rm -R "${targetApp}"
    echo "${targetApp} removed"
  else
    echo "${targetApp} not found on disk"
fi
