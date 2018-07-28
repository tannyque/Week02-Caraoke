require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Pim", 7)
  end

  def test_guest_has_name()
    assert_equal("Pim", @guest1.name())
  end

  def test_guest_has_money()
    assert_equal(7, @guest1.money())
  end

end
