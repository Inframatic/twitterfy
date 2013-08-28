require 'spec_helper'

describe "StaticPages" do

  describe "GET /static_pages" do

    it "should have the content 'Twitterfy'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Twitterfy')
    end
  end
end
