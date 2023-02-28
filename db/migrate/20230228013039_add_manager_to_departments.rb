# frozen_string_literal: true

class AddManagerToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_reference :departments,
                  :manager,
                  null: false,
                  foreign_key: { to_table: :employees }
  end
end
