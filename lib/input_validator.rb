require 'pry'

class InputValidator

  def validate(input)
    return false if input.nil? || input.length == 0
    return true if is_operator?(input)
    is_float?(input)
  end

  def is_float?(input)
    begin
      Float(input.to_s)
    rescue ArgumentError, TypeError
      return false
    end
    true
  end

  def is_operator?(input)
    input =~ /^[\+\-\/\*]?$/
  end

end