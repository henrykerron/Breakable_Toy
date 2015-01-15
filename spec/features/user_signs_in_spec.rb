require 'rails_helper'

feature "User Sign In", %q(

  As a user
  I want to be able to sign in
  So that I can regain access to my

  [x] There is a link to 'Sign In'
  [x] After providing valid credentials and signing in I am greeted with a success message
  [] If I provide credentails that are invalid I get an error message
) do

  scenario "user signs in with valid credentials" do
     user = FactoryGirl.create(:user)

     visit root_path

     click_on "Sign In"

     fill_in "Email", with: user.email
     fill_in "Password", with: user.password

     click_on "Log in"

     expect(page).to have_content "Welcome! You have signed in successfully."
  end

  scenario "user can't log in with invalid credentials" do
    visit new_user_session_path

    click_button "Log in"
    save_and_open_page
    expect(page).to have_content("Invalid email or password")
  end
end
