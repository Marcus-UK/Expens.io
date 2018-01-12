feature 'create new user' do
  scenario 'go to new user page and create new user' do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'try to sign up with mis-matched passwords' do
    visit '/users/sign_up'
    fill_in 'user[email]', with: 'marcus@testing.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123457'
    click_button 'Sign up'
    expect(page).to have_content('Password confirmation doesn\'t match Password')
  end
end
