require 'rails_helper'

feature "Signing in" do
  scenario "Signing in via form" do
    user = create(:user)

    visit "/"
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign In"

    expect(page).to have_content("#{user.name} Signed in Successfully")
  end
end
