# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :assignments
  has_many :employees, through: :assignments

  validates :name, presence: true
  validates :starts_on, presence: true
  validates :ends_on,
            comparison: { greater_than: :starts_on },
            allow_nil: true
  validates :budget,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 },
            allow_nil: true
  validates :spent,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 },
            allow_nil: true
end
