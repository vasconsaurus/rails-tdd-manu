RSpec::Matchers.define_negated_matcher :exclude, :include

# describe Array.new([1,2,3]), "Array", collection: true do
# describe Array.new([1,2,3]), "Array", :collection do
# rodar: rspec . -t collection
describe Array.new([1,2,3]), "Array", type: 'collection' do
# rodar: rspec . -t type:collection

  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
  end

  it { expect(subject).to exclude(4) }

  it '#match_array', :slow do
    expect(subject).to match_array([1,2,3])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,3)
    expect(subject).to contain_exactly(3,1,2)
  end
end
