def to_alphanumberic(s)
  s.gsub(/[^\w\s]/, '')
end

p to_alphanumberic('hello# ruby!')

require 'test/unit'

class ToAlphanumbericTest < Test::Unit::TestCase
  def test_strip_non_alphanumberic_characters
    assert_equal '3 the Magic Number', to_alphanumberic('#3 the *Magic, Number*!')
  end
end


class String
  def to_alphanumberic
    gsub /[^\w\s]/, ''
  end
end

require 'test/unit'

class StringExtensionTest < Test::Unit::TestCase
  def test_strip_non_alphanumberic_characters
    assert_equal '3 the Magic Number', to_alphanumberic('#3 the *Magic, Number*!')
  end
end
