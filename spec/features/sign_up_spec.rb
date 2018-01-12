feature 'create new user' do
  scenario 'go to new user page and create new user' do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
