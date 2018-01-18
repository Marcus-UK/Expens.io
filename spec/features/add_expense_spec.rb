feature 'add a new expense' do
  scenario 'a signed in user adds a new expense' do
    sign_up
    add_expense
    expect(page).to have_content('Expense Summary')
  end

  scenario 'a signed in user adds an expense without an amount' do
    sign_up
    visit 'expenses/new'
    select 'Travel', from: 'expense[expense_type]'
    select '2018', from: 'expense_date_1i'
    select 'January', from: 'expense_date_2i'
    select '17', from: 'expense_date_3i'
    fill_in 'expense[description]', with: 'Hello world!'
    click_button 'Create Expense'
    expect(page).to have_content('Amount can\'t be blank')
  end

  scenario 'a signed in user adds an expense withou a description' do
    sign_up
    visit 'expenses/new'
    select 'Travel', from: 'expense[expense_type]'
    fill_in 'expense[amount]', with: '100.00'
    select '2018', from: 'expense_date_1i'
    select 'January', from: 'expense_date_2i'
    select '17', from: 'expense_date_3i'
    click_button 'Create Expense'
    expect(page).to have_content('Description can\'t be blank')
  end
end
