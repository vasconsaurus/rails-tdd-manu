require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new
    # verify: mock
    expect(student).to receive(:bar)
    # exercise
    student.bar
  end
end

# mocks são usados para testar comportamentos
