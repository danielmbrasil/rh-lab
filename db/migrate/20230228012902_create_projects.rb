# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false, default: ''
      t.date :starts_on, null: false, default: -> { 'NOW()' }
      t.date :ends_on
      t.integer :budget
      t.integer :spent

      t.timestamps
    end
  end
end
