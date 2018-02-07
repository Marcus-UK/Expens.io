feature 'you can access the admin index view' do
  scenario 'as an admin user, you access the index view' do
    sign_up
    set_admin_user
    visit 'expenses/admin_index'
    expect(page).to have_content('Expense Overview')
  end

  scenario 'as a non-admin, trying to access admin redirects to your expenses' do
    sign_up
    visit 'expenses/admin_index'
    expect(page).not_to have_content('Expenses Overview')
    expect(page).to have_content('Your expenses')
  end
end
