require 'calculator'

describe Calculator, ": calculates numbers" do
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
