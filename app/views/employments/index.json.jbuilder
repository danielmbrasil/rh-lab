# frozen_string_literal: true

json.array! @employments, partial: 'employments/employment', as: :employment
