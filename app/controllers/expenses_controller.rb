class ExpensesController < ApplicationController

  def index
    @expenses = Expense.order(date: :desc)
    @expenses_total = Expense.sum(:amount)
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)

    if  @expense.save
      redirect_to @expense
    else
      render 'new'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_type, :amount, :date, :description)
  end
end
