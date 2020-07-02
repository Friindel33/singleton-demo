class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
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
Logger.instance.log_something 'heyhey'
Logger.instance.log_something 'heyheyhey'


logger = Logger.new
logger.log_something 'message'
