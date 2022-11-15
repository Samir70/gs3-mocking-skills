class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    a = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    b = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts "#{a} - #{b} = #{a - b}"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
