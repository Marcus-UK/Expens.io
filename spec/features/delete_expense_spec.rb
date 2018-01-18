feature 'delete expense' do
  scenario 'a user deletes an expense' do
    sign_up
    add_expense
    click_link 'Your expenses'
    click_link 'Delete'
    expect(page).to_not have_content('Travel')
  end
end
