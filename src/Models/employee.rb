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
      return @base_salary.to_i * @working_hours.to_i
  end
end
