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

def add_expense
  click_link 'New Expense'
  select 'Travel', from: 'expense[expense_type]'
  fill_in 'expense[amount]', with: '100.00'
  select '2018', from: 'expense_date_1i'
  select 'January', from: 'expense_date_2i'
  select '17', from: 'expense_date_3i'
  fill_in 'expense[description]', with: 'Hello world!'
  click_button 'Create Expense'
end

def click_sign_up_button
  visit '/'
  click_link 'Create an account'
end

def click_log_in_button
  visit '/'
  click_link 'Log in'
end
