class Vehicle
  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Accelerate!"
  end

  def sound_horn
    puts "Beep, Beep!"
  end

  def steer
    puts "Turn front two wheels!"
  end

  def mileage
    @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} into truck bed!"
    @cargo = contents
  end
end

class MotorCycle < Vehicle
  def steer
    puts "Turn front wheel!"
  end
end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bounce balls")
puts "Truck carrying #{truck.cargo}"

car = Car.new
car.odometer = 1322
car.gas_used = 366.0
puts "Lifetime MPG"
puts car.mileage

motorcycle = MotorCycle.new
motorcycle.steer