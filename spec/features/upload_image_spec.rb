feature 'upload image when adding an expense' do
  scenario 'upload an image' do
    sign_up
    add_expense
    expect(page).to have_xpath("//img[contains(@src, 'receipt_image.jpg')]")
  end
end
