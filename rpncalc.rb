require_relative 'lib/input_validator'
require_relative 'lib/tioneb'

def print_help
  puts "Please type a valid number, an operator (+,-./,*), or q to quit."
end

iv = InputValidator.new
calc = Tioneb.new

loop do
  print '> '
  input = gets.chomp.strip
  exit if input == 'q'
  if iv.validate(input)
    puts calc.process_input(input)
  else
    print_help
    next
  end
end


