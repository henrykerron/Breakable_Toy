require 'rails_helper'

feature "User Sign In", %q(

  As a user
  I want to be able to sign in
  So that I can regain access to my

  [x] There is a link to 'Sign In'
  [x] After filling in the required fields and signing in I am greeted with a success message
  [] If the provided credentails are incorrect I get an error message
) do

  scenario "user signs in" do
     user = FactoryGirl.create(:user)

     visit root_path

     click_on "Sign In"

     fill_in "Email", with: user.email
     fill_in "Password", with: user.password

     click_on "Log in"

     expect(page).to have_content "Welcome! You have signed in successfully."
  end
end
