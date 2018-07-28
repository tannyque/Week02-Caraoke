class Room

  attr_reader :name, :capacity, :guestlist, :playlist, :entry_fee

  def initialize(name, capacity, entry_fee)
    @name = name
    @capacity = capacity
    @guestlist = []
    @playlist = []
    @entry_fee = entry_fee
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
