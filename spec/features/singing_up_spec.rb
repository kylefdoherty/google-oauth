require 'rails_helper'

feature "Signing up" do
  scenario "successfully signing up" do
    visit '/'
    click_link "Sign Up"
    fill_in "Name", with: "Bruce Wayne"
    fill_in "Email", with: "batman@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button "Sign Up"
    expect(page).to have_content("You Signed Up Successfully")
  end
end
