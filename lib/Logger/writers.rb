require_relative "constants"
require_relative "colors"

module Logger
  class Writer
    private
    def self.set_color(color, text)
      Logger::Color.new(text, "#{color}").colorize
    end
    private
    def self.log(text, mode, title)
      color = Logger::MODES[:"#{mode}"]
      puts "#{Writer.set_color("magenta", title.to_s.upcase)}: #{Writer.set_color("#{color}", text)}"
    end
    public
    def self.info(text, title = "info")
      Writer.log(text, "info", title)
    end
    def self.warn(text, title = "warn")
      Writer.log(text, "warn", title)
    end
    def self.error(text, title = "error")
      Writer.log(text, "error", title)
    end
    def self.comment(text, title = "comment")
      Writer.log(text, "comment", title)
    end
    def self.debug(text, title = "debug")
      Writer.log(text, "debug", title)
    end
    def self.event(text, title = "event")
      Writer.log(text, "event", title)
    end
  end
end