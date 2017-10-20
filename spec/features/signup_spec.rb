feature "signing-up to bookmark manager" do
scenario "I can sign-up and see my email as part of the welcome message" do
  visit('/signup')
  fill_in('email', with: "ladymacbeth@dunsinane.com")
  fill_in('password', with: 'damn3dsp0t')
  click_button('Submit')
  expect(current_path).to eq '/links'
  expect(page).to have_content("Welcome, ladymacbeth@dunsinane.com!")
  expect(User.all.count).to eq(1)
end
end
