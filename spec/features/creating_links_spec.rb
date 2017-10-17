feature "adds a new link to the bookmark manager" do
  scenario "I can add a new link to the bookmark manager" do
    visit('/links/new')
    fill_in('Name', with: "Lady Macbeth's Blog")
    fill_in('URL', with: 'www.ladymacbeth.com')
    click_button('Submit')
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content("Lady Macbeth's Blog")
    end
  end
end
