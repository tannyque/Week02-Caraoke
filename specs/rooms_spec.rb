require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Main")
  end

  def test_room_has_name
    assert_equal("Main", @room1.name)
  end

end
