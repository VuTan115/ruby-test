class Employee
  attr_accessor :employee_id,:name,:department,:base_salary

  def initialize(employee_id, name, department,base_salary = 3000 )
    @employee_id = employee_id 
    @name = name
    @department = department
    @base_salary = base_salary
  end


  def calculate_salary (hours, ot_hours = 0)
      return @base_salary * hours
  end
end