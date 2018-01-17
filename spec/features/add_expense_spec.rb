feature 'add a new expense' do
  scenario 'a signed in user adds a new expense' do
    sign_up
    add_expense
    expect(page).to have_content('Expense Summary')
  end
end
