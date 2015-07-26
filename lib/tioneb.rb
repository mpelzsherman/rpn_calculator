require_relative "input_validator"

class Tioneb

  def initialize(operand_limit=2)
    @stack = []
    @input_validator = InputValidator.new
    @operand_limit = operand_limit
  end

  def process_input(input)
    if @input_validator.is_float?(input)
      @stack.push(Float(input))
    elsif @input_validator.is_operator?(input)
      operands = @stack.pop(@operand_limit)
      @stack.push(operands.reduce(input.to_sym))
    else
      raise ArgumentError, "Sorry, I don't know how to process #{input}."
    end
    @stack.last
  end
end