# frozen_string_literal: true

class CreateEmployments < ActiveRecord::Migration[7.0]
  def change
    create_table :employments do |t|
      t.string :registration, null: false, default: ''
      t.references :employee, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.date :starts_on, null: false, default: -> { 'NOW()' }
      t.date :ends_on
      t.integer :reason, null: false, default: 0
      t.integer :salary, null: false, default: 0

      t.timestamps
    end
  end
end
