require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name' do
    customer = create(:customer) # it loads from factory bot
    expect(customer.full_name).to start_with('Sr. ')
  end

  it '#full_name - sobrescrevendo atributo' do
    customer = create(:user, name:'jackson') # user is an alias created in our customer factory
    expect(customer.full_name).to eq('Sr. jackson')
  end

  it 'customer is vip - factory bot inheritance' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  it 'customer is default - factory bot inheritance' do
    customer = create(:customer_default)
    expect(customer.vip).to eq(false)
  end

  it 'using attributes_for' do
    attrs = attributes_for(:customer) # attributes_for returns a hash with the attributes from our factory
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with('Sr. ')
  end

  it 'Atributo Transitório' do
    customer = create(:customer_default, upcased:  true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it 'Cliente Masculino' do
    customer = create(:customer_male)
    expect(customer.gender).to eq('M')
  end

  it 'Cliente Masculino e vip' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'Cliente Feminino e default' do
    customer = create(:customer_female_default)
    expect(customer.gender).to eq('F')
  end

  it { expect{ create(:customer) }.to change { Customer.all.size }.by(1) }
end
