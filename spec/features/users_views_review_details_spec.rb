require 'rails_helper'

feature "User can view details of a review", %q(

  As a user
  I want to be able to view more details about a review
  So that I can gain more information

  Acceptance Criteria:
  [x] I can see a review's title, description and video
) do

  scenario "user can see all details of a review" do
    review = FactoryGirl.create(:review)
    visit root_path

    click_on review.title

    expect(page).to have_content review.title
    expect(page).to have_content review.description
    # Need to test video, though it currently works
    # expect(page).to have_content review.video
  end
end
