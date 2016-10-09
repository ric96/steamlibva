#!/bin/bash
# Replace symlinks for Steam to local version
#

LINKPATH="${HOME}/.steam/bin32/steam-runtime/i386/usr/lib/i386-linux-gnu"

LIBPATH="/usr/lib/i386-linux-gnu"

for LIB in libva{,-{x11,glx}}.so.1; do
  if [ -e "${LIBPATH}/${LIB}" ]; then
    if [ -e "${LINKPATH}/${LIB}" ]; then
      if [ -L "${LINKPATH}/${LIB}" ]; then
        echo "NOTICE: ${LINKPATH}/${LIB} is a symlink. Updating link ..."
        rm "${LINKPATH}/${LIB}"
        # Link will be created later down the script
      else
        echo "ERROR: ${LINKPATH}/${LIBLINK} exists but is not a symlink! Aborting ..."
        exit 2
      fi
    else
      echo "WARN: ${LINKPATH}/${LIB} does not exist, creating symlink ..."
    fi
    ln -s "${LIBPATH}/${LIB}" "${LINKPATH}/${LIB}"
  else
    echo "File ${LIBPATH}/${LIB} does not exist, aborting!"
    exit 1
  fi
done
