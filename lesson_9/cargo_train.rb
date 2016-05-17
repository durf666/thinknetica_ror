require_relative 'validation'

class CargoTrain < Train
  include Validation
  validate :number_train, :format, Train::FORMAT_TRAIN
  
  def new_wagon(wagon)
    if wagon.class == CargoWagon
      super(wagon)
    else
      puts 'false'
    end
  end
end
