
class Qa < Employee
  def initialize(employee_id, name,working_hours, ot_hours = 0 ) 
    super(employee_id, name, 'qa' ,working_hours)
  end

  def calculate_salary()
    if @ot_hours.to_i > 0
      return @base_salary.to_f *( @working_hours.to_f  * 1.15 + @ot_hours.to_f * 1.5)
    else
      return @base_salary.to_f * @working_hours.to_f  * 1.15
    end
  end
end