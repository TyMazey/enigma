require_relative 'test_helper'

class KeyGeneratorTest < Minitest::Test

  def test_it_exsist
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_it_can_create_keys_by_length
    key_1 = KeyGenerator.create(5)
    key_2 = KeyGenerator.create(25)
    key_3 = KeyGenerator.create(1)


    assert_equal 5, key_1.length
    assert_equal 25, key_2.length
    assert_equal 1, key_3.length
    assert String, key_1.class
    assert String, key_2.class
    assert String, key_3.class
  end
end
