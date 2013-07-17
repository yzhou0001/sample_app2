require 'RMagick'
include Magick

cat = ImageList.new("rails.png")
cat.display
exit