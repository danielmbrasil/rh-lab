# frozen_string_literal: true

class FetchEmployees
  def self.fetch_all
    employees = Employee.includes(:employments, :departments).where(employments: { ends_on: nil })

    employees.map do |employee|
      {
        id: employee.id,
        name: employee.name,
        active_department: { name: employee.departments&.last&.name },
        active_employment: { registration: employee.employments&.last&.registration }
      }
    end
  end

  def self.fetch(id)
    employee = Employee.includes(:projects, :departments, employments: :position).order('projects.starts_on DESC')
                       .find(id)

    {
      id: employee.id,
      name: employee.name,
      active_department: { name: employee.departments.last&.name },
      active_employment: { salary: employee.employments.last&.salary },
      active_position: { name: employee.employments&.last&.position&.name },
      projects: employee.projects
    }
  end
end
