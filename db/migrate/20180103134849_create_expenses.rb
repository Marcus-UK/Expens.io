class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :expense_type
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
