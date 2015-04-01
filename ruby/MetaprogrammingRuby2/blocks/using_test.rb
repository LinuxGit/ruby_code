require 'minitest/autorun'
require_relative 'using'

class TestUsing < MiniTest::Test
  class Resource
    def dispose
      @disposed = true
    end

    def disposed?
      @disposed
    end
  end

  def test_dispose_of_resource
    r = Resource.new
    using(r) { }
    assert r.disposed?
  end

  def test_dispose_of_resource_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) {
      using(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end
