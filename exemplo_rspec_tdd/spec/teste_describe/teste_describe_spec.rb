describe 'jacskon' do
  it 'String' do
    str = 'jackson'
    expect(subject.size).to eq(7)
  end
end

describe [1,2] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end
