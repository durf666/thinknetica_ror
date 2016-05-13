class PassengerWagon < Wagon
  attr_reader :seat

  def initialize(seat)
    @seat = seat
    @total_seat = seat
  end

  def occupy_seat
    @seat -= 1
  end

  def occupied
    @total_seat - @seat
  end
end
