#!/bin/bash

MNT="/media/alex/datasets"

if $(mount|grep -q "$MNT") ; then
	SRC="$MNT/Backups/CyberpowerPC-Secondary/"
	DST="gs://alx-backup-2017/CyberpowerPC-Secondary/"
	gsutil rsync -r "$SRC" "$DST"
else
	echo "Local backup storage has not been mounted."
fi
