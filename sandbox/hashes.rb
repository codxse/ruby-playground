example = {
  "name" => "Amber Graham",
  "occupation" => "Manager"
}

puts "Example of hash: #{example}"
puts "The name #{example["name"]}"

with_symbol = {
  :name => "Nadiar",
  :occupation => "Software Engineer"
}

puts "With Symbol: #{with_symbol}"
puts "Occupation: #{with_symbol[:occupation]}"

auto_convert = {
  name: "Nadiar Syaripul",
  occupation: "Sofware Engineer"
}

puts "Auto convert: #{auto_convert}"

def hash_arguments(name, options)
  puts "Name: #{name}"
  puts "Options: #{options}"
end

hash_arguments("Nadiar", age: 28, gender: "Male", rest: "And so on")

def connect(database:, host: "localhost", port: 3306, user: "root")
  puts "Database: #{database}"
  puts "Host: #{host}"
  puts "Port: #{port}"
  puts "User: #{user}"
end

connect({ database: "mydb" })
connect({ database: "sakilla", user: "skilla", port: 3000})
connect database: "gandiwa", port: 8000, user: "gandiwa"