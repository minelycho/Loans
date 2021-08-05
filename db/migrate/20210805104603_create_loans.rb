class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :borrower_name
      t.integer :credit_score
      t.string :status

      t.timestamps
    end
  end
end
