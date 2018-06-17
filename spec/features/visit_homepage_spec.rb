feature 'home page' do
  scenario 'A user visits the home page' do
    visit '/'
    expect(page).to have_content('Expens.io')
    expect(page).to have_content('Helping you to keep track of your work expenses')
    expect(page).to have_content('Expens.io is here to help you keep on top of
    your expenses. Sign up today and see what we can do for you.')
  end

  scenario 'A user clicks on the sign up button on the home page' do
    click_sign_up_button
    expect(page).to have_content('Email')
  end

  scenario 'Create an account button is not visible for signed in user' do
    sign_up

    expect(page).to_not have_content('Create an account')
  end

  scenario 'A user clicks on the log in button on the home page' do
    click_log_in_button
    expect(page).to have_content('Email')
  end

  scenario 'Log in button is not visible for a signed in user' do
    sign_up

    expect(page).to_not have_content('Log in')
  end
end
