class Guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def guest_cheers
    return "Whoo!"
  end

  def pay_entry_fee(room)
    @money -= room.entry_fee
  end

end
