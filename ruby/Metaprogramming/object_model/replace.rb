class Array
  def substitute(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

require 'test/unit'

class ReplaceTest < Test::Unit::TestCase
  def test_replace
    lang = %w[ruby java perl]
    lang.substitute('java', 'python')
    expected = %w[ruby python perl]
    assert_equal expected, lang
  end
end
