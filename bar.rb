class Bar

  attr_reader :total

  def initialize(total)
    @total = total
  end

  def add_money_to_bar_tab(money)
    @total += money
  end

end
