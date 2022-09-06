# frozen_string_literal: true

class AddUsernameToAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :user_name, :string
  end
end
