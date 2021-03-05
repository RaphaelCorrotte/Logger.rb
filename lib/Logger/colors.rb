=begin
# Logger's colors works with number, as 0, 1, 2, 3...
# Default colors is 0 ( white )
=end


module Logger
  class Color
    attr_accessor :colors, :color, :text
    def initialize(text, color = 0)
      @text = text.to_s
      @color = color
      @colors = {
        # Texts
        0 => "\e[39m#{text}", # White
        1 => "\e[30m#{text}", # Black
        2 => "\e[31m#{text}", # Red
        3 => "\e[32m#{text}", # Green
        4 => "\e[33m#{text}", # Brown
        5 => "\e[34m#{text}", # Blue
        6 => "\e[35m#{text}", # Magenta
        7 => "\e[36m#{text}", # Cyan
        8 => "\e[37m#{text}", # Gray
        9 => "\e[33m#{text}", # Yellow
        # Backgrounds
        10 => "\e[40m#{text}", # bg:Black
        11 => "\e[41m#{text}", # bg:Red
        12 => "\e[42m#{text}", # bg:Green
        13 => "\e[43m#{text}", # bg:Yellow
        14 => "\e[44m#{text}", # bg:Blue
        15 => "\e[45m#{text}", # bg:Magenta
        16 => "\e[46m#{text}", # bg:Cyan
        17 => "\e[100m#{text}", # bg:Gray
        # Styles
        18 => "\e[1m#{text}", # Bold
        19 => "\e[2m#{text}", # Dim
        20 => "\e[4m#{text}", # Underlined
        21 => "\e[5m#{text}", # Blink
        22 => "\e[7m#{text}" # Inverted
      }
    end
    # This returns the colorized text as a string
    def colorize
      @colors[@color.to_i] + "\e[0m"
    end
    def rainbow
      r_text = []
      @text.length.times do |num|
        r_text << Color.new(@text[num], rand(9)).colorize
      end
      r_text.join
    end
  end
end