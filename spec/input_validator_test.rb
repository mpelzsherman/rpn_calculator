require 'input_validator'

RSpec.describe InputValidator, "#validate" do

  it 'rejects invalid input' do
    iv = InputValidator.new
    expect(iv.validate(' ')).to be false
    expect(iv.validate('')).to be false
    expect(iv.validate(nil)).to be false
    expect(iv.validate('a')).to be false
    expect(iv.validate('a1')).to be false
    expect(iv.validate('++')).to be false
  end

  it 'accepts valid input' do
    iv = InputValidator.new
    expect(iv.validate('1')).to be true
    expect(iv.validate('10')).to be true
    expect(iv.validate('99999')).to be true
    expect(iv.validate('+')).to be true
    expect(iv.validate('-')).to be true
    expect(iv.validate('/')).to be true
    expect(iv.validate('*')).to be true
  end
end