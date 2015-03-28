class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end

require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric
    assert_equal "Hello Ruby", "Hello# Ruby!".to_alphanumeric
  end
end

#p Module.constants
