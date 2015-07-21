# we will retrieve some photos and print them to the file system
#

require 'flickraw'
require 'launchy'

# you get these from the flickr site when you create an app
FlickRaw.api_key = 'enter your key here'
FlickRaw.shared_secret = 'enter your secret here'

list = flickr.photos.getRecent

# let's get the photo_id for the first picture in the list
photo_id = list.first.id

# print the photo_id to the console
puts photo_id

# now get the url to display this image
photo = flickr.photos.getInfo(photo_id: photo_id)

# get the photo url
# url_b means image large
photo_url = FlickRaw.url_b(photo)

# print the photo_url to the console
puts photo_url

# launch it in the browser
Launchy.open(photo_url)


