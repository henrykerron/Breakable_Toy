# require 'rails_helper'

# feature "User posts a video", %q(

#   As a visitor
#   I want to be able to sign up
#   So that I can create an account

#   [x] There is q  a link to 'Sign Up'
#   [x] After filling in the required fields and signing up I am greeted with a success message
#   [x] If the password and password confirmation fields do not match, I am given an error message
# ) do

#   scenario "user signs up with valid information" do
#     visit root_path
#     click_on "Sign Up"

#     fill_in "Username", with: "gp"
#     fill_in "Email", with: "gp@gmail.com"
#     fill_in "Password", with: "password"
#     fill_in "Password confirmation", with: "password"

#     click_on "Sign up"

#     expect(page).to have_content "Welcome! You have signed up successfully."
#     expect(page).to_not have_link "Sign Up"
#     expect(page).to have_link "Sign Out"
#   end
