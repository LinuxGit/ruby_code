require_relative 'words_from_string'
require_relative 'count_frequency'
require 'minitest/autorun'

class WordsFromStringTest < MiniTest::Unit::TestCase

  def test_empty_words
    assert_equal([], words_from_string("  "))
    assert_equal([], words_from_string(""))
  end

  def test_single_words
    assert_equal(["cat"], words_from_string("  cat "))
    assert_equal(["cat"], words_from_string("cat"))
  end

  def test_many_words
    assert_equal(["ruby", "china"], words_from_string("ruby china"))
  end
end

class CountFrequency < MiniTest::Unit::TestCase
  def test_single_word
    assert_equal({"ruby" => 1}, count_frequency(["ruby"]))
  end
end
