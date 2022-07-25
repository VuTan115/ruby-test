
class Infrastructure < Employee
  def initialize(employee_id, name, working_hours )
    super(employee_id, name, 'infra' ,working_hours)
  end
end