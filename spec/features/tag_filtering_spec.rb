feature "filtering by tags" do
  scenario "I can enter a tag and see all links associated with it" do
    visit('/links/new')
    fill_in('Name', with: "Lady Macbeth's Blog")
    fill_in('URL', with: "www.ladymacbeth.com")
    fill_in('Tags', with: "anguish")
    click_button('Submit')
    visit '/tags/anguish'
    expect(page).to have_content("Lady Macbeth's Blog")
  end
  scenario "I can enter multiple tags on one link" do
    visit('/links/new')
    fill_in('Name', with: "Lady Macbeth's Blog")
    fill_in('URL', with: "www.ladymacbeth.com")
    fill_in('Tags', with: "anguish, guilt, murder, sleepwalking")
    click_button('Submit')
    visit '/tags/anguish'
    expect(page).to have_content("Lady Macbeth's Blog")
    visit '/tags/guilt'
    expect(page).to have_content("Lady Macbeth's Blog")
    visit '/tags/murder'
    expect(page).to have_content("Lady Macbeth's Blog")
    visit '/tags/sleepwalking'
    expect(page).to have_content("Lady Macbeth's Blog")
  end
end
