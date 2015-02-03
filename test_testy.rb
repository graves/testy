require 'minitest/autorun'
require_relative 'testy'

class TestTesty < Minitest::Unit::TestCase
  def test_that_it_can_pass
    imagine "my bro a otter" do
      bruh "is a otterbro" do
      end
    end
  end

  def test_that_it_can_fail
    assert_raises(IndexError) do
      imagine "otters r dum and so r u" do
        bruh "fail" do
          raise IndexError
        end
      end
    end
  end
end
