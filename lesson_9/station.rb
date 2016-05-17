require_relative 'validation'

class Station < Train
  # rubocop:disable Style/ClassVars
  @@array_station = []
  # rubocop:enable Style/ClassVars

  include Validation

  validate :name_station, :presence 

  def initialize(name_station)
    @name_station = name_station
    validate!
    @arr_train_on_station = []
    @hash_train_on_station = {}
    @@array_station << self
  end

  # rubocop:disable Lint/UnusedMethodArgument
  def each_train(&block)
    @hash_train_on_station.each { |number, train| yield(number, train) }
  end

  # rubocop:enable Lint/UnusedMethodArgument
  def self.all
    @@array_station
  end

  def accept_train(train, number)
    if @@arr_train.include?(number)
      @arr_train_on_station << train
      @hash_train_on_station[number] = train
    else
      puts "Train number #{number} isn't exist"
    end
  end

  def destroy_train(number_train)
    @number_train = number_train
    if @@arr_train.include?(@number_train)
      @arr_train_on_station.delete(@number_train)
    else
      puts "Train number #{number_train} absent on station #{@name_station}"
    end
  end

  def show_train
    @arr_train_on_station
  end
=begin
  def valid?
    validate!
  rescue
    false
  end

  protected

  def validate!
    raise "Station's name, should be at least 2 symbols" if @name_station.length < 2
    true
  end
=end
end
