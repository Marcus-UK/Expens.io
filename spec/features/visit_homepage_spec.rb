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

  scenario 'A user who is already signed in clicks on the sign up button' do
    sign_up
    click_sign_up_button
    expect(page).to have_content('You are already signed in.')
  end

  scenario 'A user clicks on the log in button on the home page' do
    click_log_in_button
    expect(page).to have_content('Email')
  end

  scenario ' A user who is already signed in clicks on the Log in button' do
    sign_up
    click_log_in_button
    expect(page).to have_content('You are already signed in.')
  end
end
