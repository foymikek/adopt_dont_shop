require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'when i am on the new application page' do
    it 'allows me to create a new application via filling a form' do
      visit '/pets'
      click_link "Start an Application"
      expect(current_path).to eq("/applications/new")

      fill_in "name", with: "Julia Bloom"
      fill_in "street_address", with: "514 Old Street"
      fill_in "city", with: "Briancliffe"
      fill_in "state", with: "New York"
      fill_in "zip", with: "29"
      click_button "Submit"
# how do we know where to do with no primary_id established as the recored has not been saved?
# by the time the test has run the morst recent obj will have been made, so below works
      expect(current_path).to eq("/applications/#{Application.last.id}")
    end

  end
end
