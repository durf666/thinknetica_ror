require_relative 'validation'

class Train < Route
  # rubocop:disable Style/ClassVars
  @@arr_train = []
  @@hash_train = {}
  FORMAT_TRAIN = /^[0-9a-z]{3}-*[0-9a-z]{2}$/i
  # rubocop:enable Style/ClassVars

  include Producer
  include Validation
  attr_accessor :speed
  attr_reader   :quantity_wagon
  attr_reader   :wagons

  validate :number_train, :format, FORMAT_TRAIN

  def initialize(number_train, speed = 0)
    @number_train = number_train
    @speed = speed
    validate!
    @@arr_train << @number_train
    @wagons = []
    @@hash_train[@number_train] = self
  end

  # rubocop:disable Lint/UnusedMethodArgument
  def each_wagon(&block)
    @wagons.each { |wagon| yield(wagon) }
  end

  # rubocop:enable Lint/UnusedMethodArgument
  def self.find(number_train)
    @@hash_train[number_train]
  end

  def stop
    self.speed = 0
  end

  def new_wagon(wagon)
    @wagons << wagon if @speed == 0
  end

  def destroy_wagon(wagon)
    @wagons.pop(wagon) if @speed == 0
  end

  # rubocop:disable Metrics/LineLength
  def arrive(name_station)
    @name_station = name_station
    if @@arr_station.include?(@name_station)
      puts "Train arrived in #{name_station}"
    else
      puts "This station isn't include in route"
    end

    hash = Hash[@@arr_station.map.with_index.to_a]
    index = hash[@name_station]

    if index.nil?
      puts 'Try to enter other station'
    elsif index == 0
      puts "It's initial station, next station is #{@@arr_station[index + 1]}"
    elsif index == @@arr_station.size - 1
      puts "It's final station, previous station is #{@@arr_station[index - 1]}"
    else
      puts "previous station is #{@@arr_station[index - 1]}, next station is #{@@arr_station[index + 1]}"
    end
  end
  # rubocop:enable Metrics/LineLength
=begin
  def valid?
    validate!
  rescue
    false
  end

  protected

  def validate!
    raise "Train's number has invalid format" if @number_train !~ FORMAT_TRAIN
    true
  end
=end
end
