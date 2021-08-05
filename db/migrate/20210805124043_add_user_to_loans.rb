class AddUserToLoans < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :user, :reference
  end
end
