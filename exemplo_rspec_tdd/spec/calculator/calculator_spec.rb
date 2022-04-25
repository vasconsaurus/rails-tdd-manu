require 'calculator'

describe Calculator, ": calculates numbers" do
  context '#div' do
    it 'divides by 0' do
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect{ subject.div(3, 0) }.to raise_error("divided by 0")
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
      expect{ subject.div(3, 0) }.to raise_error(/divided/)

      # to test errors you need to use a block,
      # so it won't stop at the error in calculator
      # it needs to interpret the error even if it occurs
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result). to eq(12)
    end

    specify 'with one negative number' do
      result = subject.sum(-5, 7)
      expect(result). to eq(2)
    end

    specify 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result). to eq(-12)
    end
  end
end
