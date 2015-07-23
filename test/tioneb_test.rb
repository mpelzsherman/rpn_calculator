require 'tioneb'

RSpec.describe Tioneb, "#process_input" do

  subject { Tioneb.new }

  it "should add 2 numbers together" do
    expect(subject.process_input('5')).to eq 5.0
    expect(subject.process_input('8')).to eq 8.0
    expect(subject.process_input('+')).to eq 13.0
  end

  it "should add 3 numbers together" do
    expect(subject.process_input('5')).to eq 5.0
    expect(subject.process_input('8')).to eq 8.0
    expect(subject.process_input('13')).to eq 13.0
    expect(subject.process_input('+')).to eq 26.0
  end

  it "should multiply numbers together" do
    expect(subject.process_input('-3')).to eq -3.0
    expect(subject.process_input('-2')).to eq -2.0
    expect(subject.process_input('*')).to eq 6.0
  end

  it "should replace the operands with the operation result" do
    expect(subject.process_input('-3')).to eq -3.0
    expect(subject.process_input('-2')).to eq -2.0
    expect(subject.process_input('*')).to eq 6.0
    expect(subject.process_input('5')).to eq 5.0
    expect(subject.process_input('+')).to eq 11.0
  end

end