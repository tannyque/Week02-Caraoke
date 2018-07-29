require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Bitter Sweet Symphony", "The Verve")
    @song2 = Song.new("Somewhere Over the Rainbow", "Israel Kamakawiwoʻole")
    @song3 = Song.new("Summertime Sadness", "Lana Del Rey")
    @song4 = Song.new("Don't Stop Me Now", "Queen")
    @song5 = Song.new("Heaven Is a Place on Earth", "Belinda Carlisle")
    @song6 = Song.new("What the Water Gave Me", "Florence + the Machine")
    @room1 = Room.new("Pop", 5, 4)
    @guest1 = Guest.new("Pim", 7, @song1)
    @guest2 = Guest.new("Craig", 3, @song2)
    @guest3 = Guest.new("Tanny", 5, @song3)
    @guest4 = Guest.new("Jane", 10, @song4)
    @guest5 = Guest.new("Anne", 4, @song5)
    @guest6 = Guest.new("Fraser", 15, @song6)
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

  def test_room_entry_fee()
    assert_equal(4, @room1.entry_fee())
  end

end
