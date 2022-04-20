require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # exatamente a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)

    expect(10).to be_kind_of(Integer) # pode vir por herança
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_a / be _an' do # be_a e be_an são a mesma coisa que be kind of
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_an(StringNaoVazia)
  end
end
