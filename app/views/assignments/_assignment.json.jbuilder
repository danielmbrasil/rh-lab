# frozen_string_literal: true

json.extract! assignment, :id, :employee_id, :project_id, :starts_on, :ends_on, :created_at, :updated_at
json.url assignment_url(assignment, format: :json)
