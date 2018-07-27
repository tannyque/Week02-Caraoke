require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Pim")
  end

  def test_guest_has_name()
    assert_equal("Pim", @guest1.name())
  end

end
