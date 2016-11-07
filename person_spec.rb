require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson< Minitest::Test

def setup

@person = Person.new('Claire', 35)

end

def test_person_name
  assert_equal('Claire', @person.name)
end

def test_person_age
  assert_equal(35, @person.age)
end

end