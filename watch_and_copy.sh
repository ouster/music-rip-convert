#!/bin/bash

set -x

get_cd_volume() { 
  local rc=1
  for disk in $(diskutil list | grep ^/); do 
    if diskutil info "$disk" | grep -q Optical; then
      df | sed -ne  "s,^$disk.*\(/Volumes.*\)$,\1,p"
      rc=0 
    fi
  done
  if (( rc )); then
    echo >&2 "No volume mounted."
  fi
  return $rc
}

# Wait for a new directory to appear under /volumes
while true; do
  new_dir=$(get_cd_volume)
  new_dir_escaped=$(printf "%q\n" "$new_dir")
  if [ -n "$new_dir" ] && [ "/Volumes/Audio CD" != "$new_dir" ] ; then
    # Get the name of the new directory
    base_dir=$(basename "$new_dir")
    target_dir="/Volumes/public/Media/Music/$base_dir"
    rsync -av "$new_dir/" "$target_dir"
    drutil tray eject 1
    # Exit the loop
    #break
  fi

  # Sleep for a bit before checking again
  sleep 30
done

