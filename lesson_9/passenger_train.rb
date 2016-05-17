require_relative 'validation'

class PassengerTrain < Train
  include Validation
  validate :number_train, :format, Train::FORMAT_TRAIN

  def new_wagon(wagon)
    if wagon.class == PassengerWagon
      super(wagon)
    else
      puts 'false'
    end
  end
end
