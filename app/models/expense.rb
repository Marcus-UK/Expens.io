class Expense < ApplicationRecord

validates_presence_of :expense_type, :amount, :date, :description

end
