require 'RMagick'

# clown = Magick::ImageList.new("clown.jpg")
gold_fill = Magick::GradientFill.new(0, 0, 0, 0, "#f6e09a", "#cd9245")
dst = Magick::Image.new(128, 128, gold_fill)

text = Magick::Draw.new
text.annotate(dst, 0, 0, 0, 60, "Excellent!") {
    self.gravity = Magick::SouthGravity
    self.pointsize = 48
    self.stroke = 'transparent'
    self.fill = '#0000A9'
    self.font_weight = Magick::BoldWeight
    }
dst.write('annotate.jpg')