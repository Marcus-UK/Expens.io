class Expense < ApplicationRecord

validates_presence_of :expense_type, :amount, :description

end
