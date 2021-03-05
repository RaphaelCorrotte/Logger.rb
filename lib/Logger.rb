require_relative "Logger/version"
require_relative "Logger/colors"

13.times do |num|
  puts Logger::Color.new("I'm the color #{num}", num).puts
end