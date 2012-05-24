require 'spec_helper'

describe "Cloud Home" do
  describe "Cloud Home" do
  
    it "should have the content 'Cloud Analystics'" do
      visit '/static_pages/home'
      page.should have_content('Cloud Analystics')
    end

  end
end
