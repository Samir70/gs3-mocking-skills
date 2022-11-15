class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    s = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    n = @io.gets.chomp
    if n.to_i.to_s != n
      fail "I sa-aid: ENTER A NUMBER!!!!"
    end
    @io.puts "Here is your result:"
    @io.puts s * n.to_i
  end
end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX
