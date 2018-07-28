require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new(50)
  end

  def test_bar_has_money_in_till()
    assert_equal(50, @bar.till())
  end

  def test_add_money_to_till()
    @bar.add_money_to_till(5)
    assert_equal(55, @bar.till())
  end

end
