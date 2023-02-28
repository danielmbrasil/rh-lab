# frozen_string_literal: true

class Assignment < ApplicationRecord
  belongs_to :employee
  belongs_to :project

  validates :starts_on, presence: true
  validates :ends_on,
            comparison: { greater_than: :starts_on, allow_nil: true }
end
