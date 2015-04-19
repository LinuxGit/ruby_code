class Loan
  def initialize(book)
    @book = book
    @time = Loan.time_class.now
  end

  def self.time_class
    @time_class || Time
  end

  def to_s
    "#{@book.upcase} loaned on #{@time}."
  end
end

require 'minitest/autorun'
class TestLoan < MiniTest::Test
  class FakeTime
    def self.now
      "2015-04-05 00:08:14 +0800"
    end
  end

  def test_loan
    Loan.instance_eval { @time_class = FakeTime }
    obj = Loan.new("Metaprogramming")
    assert_equal obj.to_s, "METAPROGRAMMING loaned on 2015-04-05 00:08:14 +0800."
  end
end
