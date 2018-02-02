class Expense < ApplicationRecord

validates_presence_of :expense_type, :amount, :date, :description
belongs_to :user

mount_uploader :image, ImageUploader
end
