class LedController
  def self.display_colour(hex)
    colour = Color::RGB.from_html "##{hex}"
    "Setting the colour to: (#{colour.red}, #{colour.green}, #{colour.blue})"
  end
end