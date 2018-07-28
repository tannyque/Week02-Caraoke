require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")

class GuestsTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Bitter Sweet Symphony", "The Verve")
    @guest1 = Guest.new("Pim", 7, @song1)
  end

  def test_guest_has_name()
    assert_equal("Pim", @guest1.name())
  end

  def test_guest_has_money()
    assert_equal(7, @guest1.money())
  end

  def test_guest_has_favourite_song()
    assert_equal(@song1, @guest1.favourite_song())
  end

end
