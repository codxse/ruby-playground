def accelerate
  puts "Stepping in the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-bem")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

def order_soda(flavor, size = "medium", quantity = 1)
  if quantity == 2
    plural = "soda"
  else
    plural = "sodas"
  end

  puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
end

def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  end
  miles_driven / gas_used
end

sound_horn
accelerate
use_headlights
use_headlights("High-beam")
order_soda("orange")
order_soda("lemon-lime", "small", 2)
order_soda("grape", "large")

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11431, 366)
puts "This car averages #{lifetime_mileage} MPG."
