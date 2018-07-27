class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def guest_count()
    return @guests.size()
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

end
