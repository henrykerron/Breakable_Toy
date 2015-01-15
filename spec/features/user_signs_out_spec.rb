require 'rails_helper'

feature "User Sign Out", %q(

  As a user
  I want to be able to sign out
  So that I can protect my account

  [x] If I am signed in, there is a link to 'Sign Out'
  [x] After signing out, I am greeted with a success message
) do

  scenario "user can sign out" do
     user = FactoryGirl.create(:user)

     visit root_path

     click_on "Sign In"

     fill_in "Email", with: user.email
     fill_in "Password", with: user.password

     click_on "Log in"

     click_on "Sign Out"

     expect(page).to have_content "Goodbye! You have signed out successfully."
  end
end
