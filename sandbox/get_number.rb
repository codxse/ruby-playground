# Get my number

puts "Welcome to 'get My Number!"
print "What's your name? "

input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store random number
puts "I've got a random number between 1 - 100"
puts "Can tou guess it?"
target = rand(100) + 1

num_guesses = 0
guessed_it = false
remaining_guesses = 10 - num_guesses

until num_guesses == 10 || guessed_it
  puts remaining_guesses.to_s + " guesses left."
  puts "You've got #{remaining_guesses} guesses left."

  print "Make a guess"
  guess = gets.to_i

  num_guesses += 1
  remaining_guesses = 10 - num_guesses

  if guess < target
    puts "Oops. Your guess was LOW"
  elsif guess > target
    puts "Oops. Your guess was HIGH"
  elsif guess == target
    puts "Good job, #{name}"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

end

unless guessed_it
  puts "Sorry, You didn't get my number. (it was #{target}.)"
end
