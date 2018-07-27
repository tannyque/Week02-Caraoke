require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Bitter Sweet Symphony")
  end

  def test_song_has_name()
    assert_equal("Bitter Sweet Symphony", @song1.name())
  end

end
