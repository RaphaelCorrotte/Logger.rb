require_relative "Logger/version"
require_relative "Logger/colors"
require_relative "Logger/constants"
require_relative "Logger/writers"
require_relative "Logger/String"

Logger::Writer.info("Bonjour")
Logger::Writer.warn("Bonjour")
Logger::Writer.debug("Bonjour")
Logger::Writer.comment("Bonjour")
Logger::Writer.error("Bonjour")
Logger::Writer.event("Bonjour")