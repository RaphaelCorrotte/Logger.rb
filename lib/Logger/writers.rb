require_relative "constants"
require_relative "colors"

module Logger
  class Writer
    def self.error(text)
      mode = Logger::MODES[:error]
      puts Logger::Color.new("[#{mode[:long]}]: #{text}", "#{mode[:color]}").colorize
    end
    def self.info(text)
      mode = Logger::MODES[:info]
      puts Logger::Color.new("[#{mode[:long]}]: #{text}", "#{mode[:color]}").colorize
    end
    def self.warn(text)
      mode = Logger::MODES[:warn]
      puts Logger::Color.new("[#{mode[:long]}]: #{text}", "#{mode[:color]}").colorize
    end
    def self.good(text)
      mode = Logger::MODES[:good]
      puts Logger::Color.new("[#{mode[:long]}]: #{text}", "#{mode[:color]}").colorize
    end
  end
end