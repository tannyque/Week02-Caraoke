class Room

  attr_reader :name, :capacity, :guestlist, :playlist, :entry_fee

  def initialize(name, capacity, entry_fee)
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
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
    if @guestlist.count() < @capacity
      check_in_guest()
    else
      return "Room is full"
    end
  end

  def check_guest_money(guest)
    guest.money() >= @entry_fee
  end

  def check_favourite_song_in_playlist(guest)
    if @playlist.include?(guest.favourite_song())
      return "Whoo!"
    end
  end

end
