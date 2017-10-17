feature "list of links" do
  scenario "user visits the homepage" do
    Link.create(title: 'First bookmark', url: 'First bookmark link')
    visit('/links')
    #sanity check
    require 'launchy'; save_and_open_page
    expect(page.status_code).to eq 200
    #I understand that within blocks restrict the actions to particular parts of the page.
    #I don't understand what 'ul#links' means - whether it is meaningful or if it is just a label
    #I don't understand what ul means
    within 'ul#links' do
      expect(page).to have_content('First bookmark')
    end
  end
end
