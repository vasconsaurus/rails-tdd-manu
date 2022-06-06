describe 'Test Double' do
  it '--' do
    user_double = double('User')
    allow(user_double).to receive_messages(name: 'Jack', password: 'secret')
    user_double.name
  end

  it '---' do
    user = double('User')
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
  end

  it 'as null object' do
    user = double('User').as_null_object # dispensa resultados, impede que mensagens de erro sejam levantadas
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
    user.abc
  end
end
