require_relative "colors"

module Logger
  MODES = {
    :error => {
      :color => 2,
      :long => "ERROR"
    },
    :good => {
      :color => 3,
      :long => "GOOD"
    },
    :warn => {
      :color => 9,
      :long => "WARNING"
    },
    :info => {
      :color => 5,
      :long => "INFORMATION"
    }
  }.freeze
end