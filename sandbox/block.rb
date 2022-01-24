def my_method(&my_block)
  puts "will call my_block"
  my_block.call
  puts "my_block has been called"
end

my_method do
  puts "Printing from my_method, it being called!"
end

def give(&my_block)
  puts "Will call block with two parameters"
  my_block.call("nadiar", 28)
  puts "my_block with two parameters has been called"
end

give do |name, age|
  puts "Hi my name #{name}, my age #{age}"
  puts "I am being called"
end

def do_this_and_that(name, &block)
  puts "My name: #{name}"
  block.call 28
end

do_this_and_that("Nadiar") do |age|
  puts "Age: #{age}"
end

def do_with_yield
  yield
end

do_with_yield do
  puts "Calling with yield"
end

def take_this
  yield "present"
end

take_this { |thing| puts "Braces block got #{thing}" }

["a", "b", "c"].each { |elm| puts "Elm: #{elm}" }

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd = numbers.find_all { |number| number.odd? }
puts "Odd: #{odd}"

odd_filter = numbers.filter { |number| number.odd? }
puts "Odd filter: #{odd_filter}"

even = numbers.reject { |number| number.odd? }
puts "So basically, reject is invert of filter. #{even}"

doubles = numbers.map { |number| number * 2 }
puts "Using map: #{doubles}"

sum = numbers.reduce { |prev, current| prev + current }
puts "Sum using reduce: #{sum}"