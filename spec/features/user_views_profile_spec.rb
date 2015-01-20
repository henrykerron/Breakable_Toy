require "rails_helper"

feature "user views profile", %{
  As a user
  I want to view a user's profile
  So I can learn more about them

  Acceptance Criteria
  [] Profile shows the user's username
  [] Profile shows the user's reviews and comments
  [] Profile shows the user's comments
  [] If I view my own profile there is a link to edit it
  [] A user may not edit a profile that is not their own
  } do

  scenario "user can vide username on profile page" do
    user = FactoryGirl.create(:user)

    visit root_path

    click_on "Sign In"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"

    click_on user.username
    save_and_open_page
    expect(page).to have_content user.username
  end
end
