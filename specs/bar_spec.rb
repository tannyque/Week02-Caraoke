require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new(50)
  end

  def test_bar_has_money_in_till
    assert_equal(50, @bar.till())
  end

end
