# frozen_string_literal: true

json.extract! project, :id, :name, :starts_on, :ends_on, :budget, :spent, :created_at, :updated_at
json.url project_url(project, format: :json)
