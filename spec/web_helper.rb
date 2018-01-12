def sign_up
  visit '/users/sign_up'
  fill_in 'user[email]', with: 'marcus@testing.com'
  fill_in 'user[password]', with: '123456'
  fill_in 'user[password_confirmation]', with: '123456'
  click_button 'Sign up'
end

def add_user
  visit '/users/sign_up'
  fill_in 'user[email]', with: 'test@test.com'
  fill_in 'user[password]', with: '123456'
  fill_in 'user[password_confirmation]', with: '123456'
  click_button 'Sign up'
  click_link 'Sign Out'
end
