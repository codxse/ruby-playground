class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "Salary isn't valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anon", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_name
    puts "Name: #{name}"
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    format_pay_for_period = format("$%.2f", pay_for_period)
    puts "Pay this period: $#{format_pay_for_period}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.20, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.25, 20)
  end

  def hourly_wage=(hourly_wage)
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anon", hourly_wage = 0.0, hours_per_week = 0.0)
    self.name = name
    self.hours_per_week = hours_per_week
    self.hourly_wage = hourly_wage
  end


  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class SalariedEmployee < Employee

  def initialize(name = "Anon", salary = 0.0)
    super(name, salary)
  end
end

amy = Employee.new
amy.name = "Amy"
amy.salary = 50000
amy.print_pay_stub

nadiar = Employee.new("Nadiar", 100_000)
nadiar.print_pay_stub

salaried_employee = SalariedEmployee.new("John Obi Michael", 5000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Smith"
hourly_employee.hourly_wage = 14.97
hourly_employee.hours_per_week = 30
hourly_employee.print_pay_stub

my_cashier = HourlyEmployee.cashier("Junta")
my_cashier.print_pay_stub

security_guard = HourlyEmployee.security_guard("Kola")
security_guard.print_pay_stub

janitor = HourlyEmployee.janitor("Lia")
janitor.print_pay_stub
