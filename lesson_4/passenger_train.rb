class PassengerTrain < Train
  def new_wagon(wagon)
    if wagon.class == PassengerWagon
      @@wagons << @wagon
    else
      puts "false"
    end
  end
end