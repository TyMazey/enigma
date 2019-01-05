require_relative 'test_helper'

class KeyGenerator.new < Minitest::Test

  def test_it_exsist
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_it_can_create_keys_by_length
    key = KeyGenerator.create(5)

    assert_equal 5, key.length
    assert_instance_of String, key.class
  end
end
