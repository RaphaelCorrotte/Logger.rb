require_relative "colors"

module Logger
  MODES = {
    :info => "blue",
    :warn => "yellow",
    :error => "red",
    :event => "green",
    :debug => "gray",
    :comment => "magenta",
  }.freeze
end