#!/bin/bash

#Usage: ./backup.sh /path/to/dirname

dirname=$1

backupdir="/path/to/backupdir"

filename="${dirname}_$(date +%Y%m%d).tar.gz"

tar czf "${backupdir}/${filename}" "${dirname}"
