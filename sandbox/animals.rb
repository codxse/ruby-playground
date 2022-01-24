class Dog
  # attr_accessor :name, :age
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def make_up_name
    @name = "Sandy"
  end

  def make_up_age
    @age = 5
  end

  def talk
    puts "#{@name} Bark!"
  end

  def move(destination)
    puts "#{@name} Running to the #{destination}"
  end
end

fido = Dog.new
fido.name = "Bran"
fido.talk
fido.age = 4
fido.report_age
rex = Dog.new
rex.make_up_name
rex.move("food bowl")

anonymous = Dog.new
anonymous.name = ""
