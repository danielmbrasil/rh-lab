# frozen_string_literal: true

class Department < ApplicationRecord
  belongs_to :manager, class_name: 'Employee'
  has_many :employments
  has_many :employees, through: :employments

  validates :name, presence: true
end
