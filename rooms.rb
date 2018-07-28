class Room

  attr_reader :name, :capacity, :guestlist, :playlist

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

  def check_room_capacity()
    if @guestlist.count() <= @capacity
      check_in_guest()
    else
      return "Room is full"
    end
  end

end
