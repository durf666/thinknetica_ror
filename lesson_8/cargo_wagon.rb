class CargoWagon < Wagon
  attr_accessor :occupy_volume

  def initialize(volume, occupy_volume = 0)
    @occupy_volume = occupy_volume
    @volume = volume
  end

  def free
    @volume - @occupy_volume
  end
end
