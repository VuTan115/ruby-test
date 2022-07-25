

class Developer < Employee
  def initialize(employee_id, name  )
    super(employee_id, name, 'dev')
  end
  def calculate_salary(hours , ot_hours)
    if ot_hours > 0
      return @base_salary *( hours  * 1.15 + ot_hours * 1.5)
    else
      return @base_salary * hours  * 1.15
    end
  end
end