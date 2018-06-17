feature 'sign_in' do
  scenario 'once a user has been created, they can sign in' do
    add_user
    click_link 'Log in'
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'user tries to sign in with an incorrect password' do
    add_user
    click_link 'Log in'
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: '123457'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end
end
