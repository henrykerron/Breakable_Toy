require "rails_helper"

feature "user profile", %{
  As a user
  I want to edit my profile
  So that I can update my information

  Acceptance Criteria:
  [] My new username should appear on my profile
  [x] I must provide a valid username, email, and password
  [x] I can sign in with my new password
  [] I am presented with an error if I enter invalid information
  [] If I view my own profile there is a link to edit it
  [] A user may not edit a profile that is not their own
  } do

  scenario "users can edit their own profile" do
    user = FactoryGirl.create(:user)

    visit root_path

    click_on "Sign In"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"

    click_on "Edit Profile"

    fill_in "Username", with: "newuser"
    fill_in "Password", with: "campy123"
    fill_in "Password confirmation", with: "campy123"
    fill_in "Email", with: user.email
    fill_in "Current password", with: user.password

    click_on "Update"

    expect(page).to have_content "Your account has been updated successfully"
  end
end
