require_relative "input_validator"

class Tioneb

  def initialize
    @stack = []
    @iv = InputValidator.new
  end

  def process_input(input)
    if @iv.is_float?(input)
      @stack.push(Float(input))
    elsif @iv.is_operator?(input)
      @stack = Array(@stack.reduce(input.to_sym))
    else
      raise ArgumentError, "Sorry, I don't know how to process #{input}."
    end
    @stack.last
  end
end