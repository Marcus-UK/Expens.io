class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
    @expenses_total = Expense.sum(:amount)
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
  end

  def create
    @expense = Expense.new(expense_params)

    @expense.save
    redirect_to @expense
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_type, :amount, :description)
  end
end
