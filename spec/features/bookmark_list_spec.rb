feature "viewing all links" do
  scenario "I can see a list of links previously added" do
    Link.create(title: 'First bookmark', url: 'First bookmark link')
    visit('/links')
    #sanity check
    expect(page.status_code).to eq 200
    #I understand that within blocks restrict the actions to particular parts of the page.
    #I don't understand what 'ul#links' means - whether it is meaningful or if it is just a label
    #I don't understand what ul means
    within 'ul#links' do
      expect(page).to have_content('First bookmark')
    end
  end
end
