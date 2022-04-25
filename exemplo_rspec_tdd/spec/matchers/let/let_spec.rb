$counter = 0 # variavel global

describe 'let' do
  let(:count) { $counter += 1}

  it 'memoriza o valor' do
    expect(count).to eq(1) # 1a vez
    expect(count).to eq(1) # 2a, primeiro teste, então é o cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) # outro teste, então soma mais um
  end
end

# faz cache dentro do teste e não faz entre os testes
