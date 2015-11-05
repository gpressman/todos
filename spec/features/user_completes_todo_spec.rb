require "rails_helper"

  feature "User completes todo" do
  	scenario "successfully" do
  	  sign_in_as "somefifteen@example.com"

  	  click_on "Add a new todo"
  	  fill_in "Title", with: "Buy Milk"
  	  click_on "Submit"
    

  	  click_on "Mark complete"
  	  expect(page).to have_css ".todos li.completed"
  	end
end
