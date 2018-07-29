require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new(10)
  end

  def test_total_bar_tab()
    assert_equal(10, @bar.total())
  end

  def test_add_money_to_bar_tab()
    @bar.add_money_to_bar_tab(5)
    assert_equal(15, @bar.total())
  end

end
