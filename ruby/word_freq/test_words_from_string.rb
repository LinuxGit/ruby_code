require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("   "))
  end

  def test_single_word
    assert_equal(["ruby"], words_from_string("ruby"))
    assert_equal(["ruby"], words_from_string(" ruby "))
  end

  def test_many_words
    assert_equal(["i", "love", "ruby"], words_from_string("I love ruby"))
  end

  def test_ignore_punctuation
    assert_equal(["i", "love", "ruby", "it's", "fantastic"],
      words_from_string("<i> love -ruby! it's fantastic."))
  end
end
