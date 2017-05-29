#!/bin/bash

export GOOGLE_DRIVE_SETTINGS="./google-drive"
duplicity --dry-run --exclude-filelist ./ignore ~/ gdocs://aleozlx@gmail.com/Backup/CyberpowerPC
# https://github.com/westerngateguard/duplicity-pydrive-backend/blob/master/pydrivebackend.py
