=begin
# Logger's colors works with number, as 0, 1, 2, 3...
# Default colors is 0 ( white )
=end


module Logger
  class Color < String
    attr_accessor :colors, :color
    def initialize(text, color = 0)
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
      }
    end
    # This returns the colorized text as a string
    def puts
      @colors[@color.to_i]
    end
  end
end