# useful-scripts

This bash script was written and tested on macOS

## It's purpose is to wait for a cd to be mounted under /Volumes that has a volume name that is not Audio CD or blank as it depends on Apple Music to rename the Volume automatically

Apple Music will rip the music automatically which was sufficent for me to get my collection online

It also rsync's the aiff files as is to a network drive (my Nas in my case)

I decided that adding the metadata at this point might be inaccurate and add too many bad entries (Apple Music got it wrong or had no artwork for 3-15% of my collection)

So as a second manual pass I'll add metadata using this free tool: https://picard.musicbrainz.org/

## Workflow:

- Setup an mac in a corner of a room with a cd drive plugged
- Run this script edited to match your requirements
- Run caffeinate in another window (brew install caffeine)
- insert disc
- wait for Apple music to start ripping or prompt for multiple metadata matches
- wait for disc to eject
+ repeat

Warning this can take weeks but there is very little interaction
## TODO

presumably metadata can be automated better using some other tools such as:

Suggestion from ChatGPT:
third-party tool such as XLD or Max to rip CDs on a Mac and automatically add CDDB metadata to the ripped files. Both XLD and Max are free and offer options to extract audio tracks from CDs and retrieve metadata from online databases such as CDDB. After the tracks have been ripped, the metadata can be saved in the file's ID3 tags, which can be read by most media players
