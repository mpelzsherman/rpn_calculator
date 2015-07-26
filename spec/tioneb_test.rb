require 'tioneb'

RSpec.describe Tioneb, "#process_input" do

  subject { Tioneb.new(2) }

  it "should raise an exception given invalid input" do
    expect { subject.process_input('a') }.to raise_error(ArgumentError)
  end

  it "should add 2 numbers" do
    expect(subject.process_input('5')).to eq 5.0
    expect(subject.process_input('8')).to eq 8.0
    expect(subject.process_input('+')).to eq 13.0
  end

  it "should multiply numbers" do
    expect(subject.process_input('-3')).to eq -3.0
    expect(subject.process_input('-2')).to eq -2.0
    expect(subject.process_input('*')).to eq 6.0
  end

  it "should divide numbers" do
    expect(subject.process_input('24')).to eq 24.0
    expect(subject.process_input('6')).to eq 6.0
    expect(subject.process_input('/')).to eq 4.0
  end

  it "should subtract numbers" do
    expect(subject.process_input('24')).to eq 24.0
    expect(subject.process_input('4')).to eq 4.0
    expect(subject.process_input('-')).to eq 20.0
  end

  it "should replace the operands with the operation result" do
    expect(subject.process_input('2')).to eq 2.0
    expect(subject.process_input('3')).to eq 3.0
    expect(subject.process_input('9')).to eq 9.0
    expect(subject.process_input('+')).to eq 12.0
    expect(subject.process_input('*')).to eq 24.0
  end

  it "should support arbitrary operand limits" do
    calculator = Tioneb.new(3)
    expect(calculator.process_input('5')).to eq 5.0
    expect(calculator.process_input('8')).to eq 8.0
    expect(calculator.process_input('-3')).to eq -3.0
    expect(calculator.process_input('+')).to eq 10.0
  end

end