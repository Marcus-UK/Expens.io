feature 'update expense' do
  scenario 'user updates an expense that they have previously entered' do
    sign_up
    add_expense
    visit '/expenses'
    click_link 'Edit'
    fill_in 'expense[amount]', with: '99.00'
    click_button 'Update Expense'
    expect(page).to have_content('99.0')
  end
end
