class ExpensesController < ApplicationController

  def index
    @expenses = current_user.expenses.order(date: :desc)
    @expenses_total = current_user.expenses.sum(:amount)
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = current_user.expenses.build
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def create
    @expense = current_user.expenses.build(expense_params)

    if  @expense.save
      redirect_to @expense
    else
      render 'new'
    end
  end

  def update
    @expense = Expense.find(params[:id])

    if @expense.update(expense_params)
      redirect_to @expense
    else
      render 'edit'
    end
  end


  private

  def expense_params
    params.require(:expense).permit(:expense_type, :amount, :date, :description, :user)
  end
end
