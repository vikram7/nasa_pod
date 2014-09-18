require 'open-uri'
require 'nokogiri'

def image_url(page_url = 'http://apod.nasa.gov/apod/astropix.html')
  html = open(page_url)
  doc = Nokogiri::HTML(html)
  src = doc.css('img').first.attr('src')
  "http://apod.nasa.gov/apod/#{src}"
end

`curl #{image_url} > apod_daily_image.jpg`

filepath = File.join(Dir.pwd, "apod_daily_image.jpg")

`sh ./apod_reset.sh`
sleep(0.5)
`sh ./apod_set.sh #{filepath}`

`rm apod_daily_image.jpg`
