require 'student'
require 'course'

# mocks são usados para testar comportamentos
describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new
    # verify: mock
    expect(student).to receive(:bar)
    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice # or exactly(n).times or at_least(:once) or at_least(n).times etc
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true) # forço um retorno
    puts student.foo(123)
  end
end
