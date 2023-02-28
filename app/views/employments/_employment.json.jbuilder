# frozen_string_literal: true

json.extract! employment, :id, :employee_id, :department_id, :position_id, :registration, :reason, :salary, :starts_on,
              :ends_on, :created_at, :updated_at
json.url employment_url(employment, format: :json)
