class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # class method
  def self.say_something
    puts "Hey"
  end

  # instance method
  def log_something topic
    @f.puts topic
  end
end

Logger.say_something

logger = Logger.new
logger.log_something 'message'
