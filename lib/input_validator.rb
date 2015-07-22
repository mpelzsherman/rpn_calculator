require 'pry'

class InputValidator

  def validate(input)
    return false if input.nil? || input.length == 0
    return true if input =~ /^[\+\-\/\*]?$/
    begin
      Float(input.to_s)
    rescue ArgumentError, TypeError
      return false
    end
    return true
  end

end