require 'money'

bargin_price = Money.new(99, "USD")

class Numeric
  def to_money(currency = nil)
    Money.from_numeric(self, currency || Money.default_currency)
  end
end
