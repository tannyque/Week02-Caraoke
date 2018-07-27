class Room

  attr_reader :name, :guestlist, :playlist, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guestlist = []
    @playlist = []
  end

  def guest_count()
    return @guestlist.size()
  end

  def check_in_guest(guest)
    @guestlist.push(guest)
  end

  def check_out_guest(guest)
    @guestlist.delete(guest)
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

end
