# useful scripts

Probably should have started this years go

collecting useful randoms scripts as I go

# CD Rip via Apple Music and Copy to Nas

# useful-scripts

This bash script was written and tested on macOS

## Purpose
1. Copy by CD's to my Nas and ingest into Apple Music
2. Wait for a cd to be mounted under /Volumes that has a volume name that is not Audio CD or blank
3. Depends on Apple Music to rename the Volume automatically to something useful (Apple Music's source is GraceNote)

Apple Music will rip the music automatically which was sufficient for me to get my collection online

It also rsync's the aiff files as is to a network drive (my Nas in my case)

I decided that adding the metadata at this point might be inaccurate and add too many bad entries (Apple Music got it wrong or had no artwork for 3-15% of my collection)

So as a second manual pass I'll add metadata using this free tool: https://picard.musicbrainz.org/

## Workflow:

- Setup an mac in a corner of a room with a cd drive plugged in
- Run this script edited to match your requirements, drive etc
- Run caffeinate in another window (brew install caffeine) to stop that mac sleeping
- Insert disc
- Wait for Apple music to start ripping or prompt for multiple metadata matches
- Wait for disc to eject
+ Repeat

*Notes*
Once that is all done you can manually use Picard Musicbrainz to write the manually curated metadata into the .aiff files as it will be more accurate
Or you can just do it for the entire collection and clean it up manually but there are 2300+ files to look at ;) and I feel that is more dangerous

Warning this can take weeks, but there is very little interaction it's just tedious


## TODO

Presumably addtion of the metadata can be automated better and added to the .aiff files using some other cli tools - but there will be mistakes made by that approach.

You might want to disable auto ingestion by Apple Music as well from the script as that will speed up ingestion

### Suggestion from ChatGPT:
third-party tool such as XLD or Max to rip CDs on a Mac and automatically add CDDB metadata to the ripped files. Both XLD and Max are free and offer options to extract audio tracks from CDs and retrieve metadata from online databases such as CDDB. After the tracks have been ripped, the metadata can be saved in the file's ID3 tags, which can be read by most media players
*Note* If this prompts you to select the correct info or enterit manually all good - submitted manually entered metadata via / artwork via Apple Music (for 2% of my collection that was more non commerical cd's)

## Thoughts
- If you just want in Apple music you can not use the script but there is no way to get it out again?
- Music that is curated metadata and tracks on a drive can be ingested into Apple music or Spotify as a final step I believe 

