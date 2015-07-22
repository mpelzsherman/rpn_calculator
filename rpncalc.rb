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
  print_help unless iv.validate(input)
  calc.process_input(input)
end

