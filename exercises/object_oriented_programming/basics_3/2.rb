class Vehicle
  def start_engine
    "ready to go"
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + "! drive #{speed} please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')