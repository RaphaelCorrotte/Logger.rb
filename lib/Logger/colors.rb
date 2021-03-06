=begin
# Logger's colors works with number, as 0, 1, 2, 3...
# Default colors is 0 ( white )
=end

# "\033[#{bgColor_code};#{color_code}m#{text}\033[0m"

module Logger
  class Color
    attr_reader :colors, :color, :text
    def initialize(text, color = "default")
      text = text.to_s
      @text = text
      @color = color
      @colors = {
        # Texts
        "default" => "\e[38m#{text}", # Default
        "white" => "\e[39m#{text}", # White
        "black" => "\e[30m#{text}", # Black
        "red" => "\e[31m#{text}", # Red
        "green" => "\e[32m#{text}", # Green
        "brown" => "\e[33m#{text}", # Brown
        "blue" => "\e[34m#{text}", # Blue
        "magenta" => "\e[35m#{text}", # Magenta
        "cyan" => "\e[36m#{text}", # Cyan
        "gray" => "\e[37m#{text}", # Gray
        "yellow" => "\e[33m#{text}", # Yellow
        # Backgrounds
        "bg_black" => "\e[40m#{text}", # bg:Black
        "bg_red" => "\e[41m#{text}", # bg:Red
        "bg_green" => "\e[42m#{text}", # bg:Green
        "bg_yellow" => "\e[43m#{text}", # bg:Yellow
        "bg_blue" => "\e[44m#{text}", # bg:Blue
        "bg_magenta" => "\e[45m#{text}", # bg:Magenta
        "bg_cyan" => "\e[46m#{text}", # bg:Cyan
        "bg_gray" => "\e[100m#{text}", # bg:Gray
      }
    end
    # This returns the colorized text as a string
    def colorize
      if @colors[@color]
        @colors[@color] + "\e[0m"
      else
        "No color for #{@color}"
      end
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


=begin
:default => "38",
  :black => "30",
  :red => "31",
  :green => "32",
  :brown => "33",
  :blue => "34",
  :purple => "35",
  :cyan => "36",
  :gray => "37",
  :dark_gray => "1;30",
  :light_red => "1;31",
  :light_green => "1;32",
  :yellow => "1;33",
  :light_blue => "1;34",
  :light_purple => "1;35",
  :light_cyan => "1;36",
  :white => "1;37"
}
@bg_colors = {
  :default => "0",
  :black => "40",
  :red => "41",
  :green => "42",
  :brown => "43",
  :blue => "44",
  :purple => "45",
  :cyan => "46",
  :gray => "47",
  :dark_gray => "100",
  :light_red => "101",
  :light_green => "102",
  :yellow => "103",
  :light_blue => "104",
  :light_purple => "105",
  :light_cyan => "106",
  :white => "107"
}
=end