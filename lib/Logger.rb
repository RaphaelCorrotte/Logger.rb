require_relative "Logger/version"
require_relative "Logger/colors"
require_relative "Logger/constants"
require_relative "Logger/writers"

=begin
28.times do |num|
  a = Logger::Color.new("I'm the color #{num}", num)
  puts a.colorize
end

Logger::Writer.error("Text")
Logger::Writer.info("Text")
Logger::Writer.warn("Text")
Logger::Writer.good("Text")
=end