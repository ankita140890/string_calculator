require 'rails_helper'

RSpec.describe StringCalc, type: :model do
  let(:calculator) { StringCalc.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number string' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple numbers' do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it 'returns the sum of numbers with new lines as delimiters' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'supports another different delimiter' do
      expect(calculator.add("//|\n1|2|3")).to eq(6)
    end

    it 'raises an exception for negative numbers' do
      expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end

    it 'raises an exception for multiple negative numbers' do
      expect { calculator.add("1,-2,-3,4") }.to raise_error("negative numbers not allowed: -2, -3")
    end

    it 'ignores numbers larger than 1000' do
      expect(calculator.add("2,1001")).to eq(2)
    end

    it "supports delimiters of any length" do
      expect(calculator.add("//[***]\n1***2***3")).to eq(6)
    end

    it "supports multiple delimiters" do
      expect(calculator.add("//[*][%][;]\n1*2%3;5")).to eq(11)
    end

    it "supports multiple delimiters" do
      expect(calculator.add("//[**][%%][;;;]\n1**2%%3;;;9")).to eq(15)
    end

  end
end
