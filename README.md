This is a small script to update your Mac OSX background as the latest NASA astronomy picture of the day located here:

http://apod.nasa.gov/apod/astropix.html

to run this script for the first time, follow the commands below in your terminal:

1. git clone git@github.com:vikram7/nasa_pod.git
2. cd nasa_pod
3. ruby apod_fetch.rb
4. squeal in joy at the Universe

on subsequent days, follow the commands below once you're in the nasa_pod directory:

1. ruby apod_fetch.rb
2. squeal in joy at the Universe

Todos
- image fetched should be saved to temp location
- add ability to have the photo automatically update without having to run script
- update applescripts with fixed file names per Dan's suggestion
- occasionally nasa site will have a video (which is a different selector and results in a nil that attr tries to access). need to allow for this.
