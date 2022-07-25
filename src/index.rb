

class Employee
  attr_accessor :employee_id,:name,:department,:base_salary

  def initialize(employee_id, name, department, working_hours ,base_salary = 3000 )
    @employee_id = employee_id 
    @name = name
    @department = department
    @working_hours = working_hours
    @base_salary = base_salary
  end


  def calculate_salary ()
      return @base_salary.to_f * @working_hours.to_f
  end
end

class Dev < Employee
  def initialize(employee_id, name ,working_hours,ot_hours = 0 )
    super(employee_id, name, 'dev',working_hours)
  end
  def calculate_salary()
    if @ot_hours.to_i > 0
      return @base_salary *(@working_hours  * 1.15 + @ot_hours * 1.5)
    else
      return @base_salary * @working_hours  * 1.15
    end
  end
end

class Qa < Employee
  def initialize(employee_id, name,working_hours, ot_hours = 0 ) 
    super(employee_id, name, 'qa' ,working_hours)
  end

  def calculate_salary()
    if @ot_hours.to_i > 0
      return @base_salary *( @working_hours  * 1.15 + @ot_hours * 1.5)
    else
      return @base_salary.to_f * @working_hours  * 1.15
    end
  end
end

Names = %w{Andrew Logan Marian Ian Vernon Gilbert Rhoda Jeff Ina Elijah Frances Luella Emily Jose Rosa Birdie Evelyn Martin Leila Miguel Juan Myrtie Barbara Lina Stella Vincent}

Ot_hours = %w{0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 }
QualityAssurance = %w{Tester QA}
Infrastructure = %w{Devops Infrastructure Networking Security}
Developer = %w{Back-End Front-End Full-Stack Mobile Database Devops Accounting Administration Finance Human Resources Legal Management Marketing Operations Procurement Quality Assurance Tester QA }
BackOffice = %w{Accounting Administration Finance Human Resources Legal Management Marketing Operations Procurement Quality Assurance}

Departments = ['BackOffice', 'QualityAssurance', 'Infrastructure', 'Developer']


def generate_random_string(data_set)
  charset = data_set
  (0...1).map{ charset.to_a[rand(charset.size)] }.join
end

employees = []

choice = 0
while choice.to_i != 5
    puts "------------- Employee Management System --------------"
    puts "1. Generate Employee"
    puts "2. List Employee"
    puts "3. Employee with salary > 5000"
    puts "4. Add New Employee "
    puts "5. Exit"
    puts "Enter your choice:"
    choice = gets.chomp
    case choice.to_i
    when 1
      puts "Enter the number of employees you want to generate:"
      number_of_employees = gets.chomp.to_i
      number_of_employees.times do
        employee_id = rand(3000..9999)
        name = generate_random_string(Names)
        department = generate_random_string(Departments)
        ot_hours = generate_random_string(Ot_hours)
        working_hours = rand(1..8)
        if department == 'Developer'
          employee = Dev.new(employee_id, name,working_hours, ot_hours)
        elsif department == 'QualityAssurance'
          employee = Qa.new(employee_id, name,working_hours, ot_hours)
        else
          employee = Employee.new(employee_id, name, department, working_hours)
        end
        employees << employee
      end
    when 2
      puts "List of Employees"
      employees.each do |employee|
        puts employee.inspect
      end
    when 3
      puts "Employees with salary > 5000"
      employees.each do |employee|
        if employee.calculate_salary() > 5000
           puts employee.inspect + " has salary " + employee.calculate_salary().to_s
        end
      end

    when 4
      puts "Add New Employee"
      puts "Enter the Employee ID:"
      employee_id = gets.chomp
      puts "Enter the Name:"
      name = gets.chomp
      puts "Enter the Department:"
      department = gets.chomp
      if(department == 'Developer'|| department == 'QualityAssurance')
        puts "Enter the OT Hours:"
        working_hours = gets.chomp
      puts "Enter the working hours:"
      working_hours = gets.chomp.to_i
      if department == 'dev'
        employee = Dev.new(employee_id, name, department, working_hours)
      elsif department == 'qa'
        employee = Qa.new(employee_id, name, department, working_hours)
      else
        employee = Employee.new(employee_id, name, department, working_hours)
      end
      employees << employee
      puts "Employee ID: #{employee_id} Name: #{name} Department: #{department} Salary: #{employee.calculate_salary()}"
    end

end

    