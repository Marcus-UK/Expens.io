class AddImageToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :image, :string
  end
end
