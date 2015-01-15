require 'rails_helper'

feature "User can view all reviews on index page", %q(

  As a user
  I want to be able to view a list of all video reviews
  So that I can choose which reviews I would like to watch

  Acceptance Criteria:
  [x] I can see all reviews on the index page
  [x] I can view a review's title
) do

  scenario "user can view all reviews on index page" do
    reviews = FactoryGirl.create_list(:review, 2)

    visit reviews_path
save_and_open_page
    reviews.each do |review|
      expect(page).to have_content(review.title)
    end
  end
end
