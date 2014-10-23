require_relative 'count_frequency'
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_word
    assert_equal({}, count_frequency([]))
  end

  def test_single_word
    assert_equal({"ruby" => 1}, count_frequency(["ruby"]))
  end

  def test_two_different_words
    assert_equal({"love" =>1, "ruby" => 1}, count_frequency(["love", "ruby"]))
  end

  def test_two_words_with_repeat
    assert_equal({"love" => 2, "ruby" => 1}, 
                count_frequency(["love", "ruby", "love"]))
  end
end
