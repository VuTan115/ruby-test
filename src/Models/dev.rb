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