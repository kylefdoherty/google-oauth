require "rails_helper"

feature "Creating a Post" do
  scenario "User not signed in" do
    user = create(:user)

    visit user_posts_path(user)
    click_link "New Post"

    expect(page).to have_content("You must be signed in to access this page")
  end
end

