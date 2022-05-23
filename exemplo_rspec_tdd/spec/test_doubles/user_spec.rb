describe 'Test Double' do
  it '--' do
    user_double = double('User')
    allow(user_double).to receive_messages(name: 'Jack', password: 'secret')
    user_double.name
  end
end
