feature 'index view of expenses gives total amount' do
  scenario 'user adds two £100 expenses and expects to see £200 total' do
    sign_up
    add_expense
    add_expense
    visit '/expenses'
    expect(page).to have_content('Total Amount: £200.0')
  end
end
