require 'rails_helper'

feature "User posts a video review", %q(

  As a user
  I want to be able to post a video review
  So that I can share my own video reviews with other users

  [x] I must have a title, description and video emdeded
  [x] After filling in the required fields and submitting I am greeted with a success message
  [] If all fields are not filled out, I am given an error message
) do

  scenario "user posts a review with valid information" do
    review = FactoryGirl.create(:review)
    user = FactoryGirl.create(:user)
    visit root_path

    click_on "Sign In"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"

    click_on "Post a review!"

    fill_in "Title", with: review.title
    fill_in "Description", with: review.description
    fill_in "Video", with: review.video

    click_on "Submit"

    expect(page).to have_content "Review created!"
    expect(page).to have_content review.title
    expect(page).to have_content review.description
    #Working on displaying videos in testing
    # expect(page).to have_content review.video
  end
end
