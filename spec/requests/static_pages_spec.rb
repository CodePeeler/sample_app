require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Sasmple App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')    
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
     end
  end

  describe "About page" do

    it "should have the content h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end  

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
