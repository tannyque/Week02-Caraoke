require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Main")
    @guest1 = Guest.new("Pim")
    @guest2 = Guest.new("Craig")
    @song1 = Song.new("Bitter Sweet Symphony")
    @song2 = Song.new("Somewhere Over The Rainbow")
  end

  def test_room_has_name
    assert_equal("Main", @room1.name)
  end

  def test_room_has_zero_guests
    assert_equal(0, @room1.guest_count())
  end

end
