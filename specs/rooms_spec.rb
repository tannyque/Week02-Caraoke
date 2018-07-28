require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Pop", 5)
    @guest1 = Guest.new("Pim")
    @guest2 = Guest.new("Craig")
    @guest3 = Guest.new("Tanny")
    @guest4 = Guest.new("Jane")
    @guest5 = Guest.new("Anne")
    @guest6 = Guest.new("Fraser")
    @song1 = Song.new("Bitter Sweet Symphony")
    @song2 = Song.new("Somewhere Over The Rainbow")
  end

  def test_room_has_name()
    assert_equal("Pop", @room1.name)
  end

  def test_room_has_zero_guests()
    assert_equal(0, @room1.guestlist.count())
  end

  def test_check_in_guest_to_room()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    assert_equal(2, @room1.guestlist.count())
  end

  def test_check_out_guest_from_room()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.guestlist.count())
  end

  def test_add_songs_to_playlist()
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    assert_equal(2, @room1.playlist.count())
  end

  def test_check_room_capacity()
    assert_equal(5, @room1.capacity())
  end

  def test_room_overcapacity()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    @room1.check_in_guest(@guest5)
    @room1.check_in_guest(@guest6)
    assert_equal("Room is full", @room1.check_room_capacity())

  end

end
