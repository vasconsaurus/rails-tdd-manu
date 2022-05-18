# describe [1,7,9] do
#   it { is_expected.to all (be_odd).and be_an(Integer)}
# end

# describe 'all', collection: true do
# describe 'all', :collection do
# rodar: rspec . -t collection
describe 'all', type: 'collection' do
# rodar: rspec . -t type:collection

  it { expect([1,7,9]).to all (be_odd).and be_an(Integer)}
  it { expect(['ruby', 'rails']).to all(be_a(String).and include('r')) }
end
