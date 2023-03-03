# frozen_string_literal: true

class Employment < ApplicationRecord
  belongs_to :employee
  belongs_to :department
  belongs_to :position

  validates :salary,
            presence: true,
            numericality: { only_integer: true, greater_than: 0 }
  validates :registration, presence: true
  validates :starts_on, presence: true
  validates :ends_on,
            comparison: { greater_than: :starts_on, allow_nil: true }

  validate :only_one_active_employment

  enum :reason, { hire: 1, promote: 10, restructure: 20 },
       default: :hire

  def only_one_active_employment
    return if ends_on.present?
    return unless Employment.exists?(ends_on: nil, employee_id:)

    errors.add(:ends_on, "can't be blank if there's already an active employment")
  end
end
