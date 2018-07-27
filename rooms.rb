class Room

  attr_reader :name

  def initialize(name)
    @name = name
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

end
