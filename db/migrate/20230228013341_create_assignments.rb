# frozen_string_literal: true

class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.date :starts_on, null: false, default: -> { 'NOW()' }
      t.date :ends_on

      t.timestamps
    end
  end
end
