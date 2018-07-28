class Bar

  attr_reader :till

  def initialize(till)
    @till = till
  end

  def add_money_to_till(money)
    @till += money
  end

end
