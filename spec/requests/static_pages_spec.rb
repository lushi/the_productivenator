require 'spec_helper'

describe "Static pages" do
 
 describe "Home page" do

 	it "should have the h1 'The Productivenator'" do
 		visit '/static_pages/home'
 		page.should have_selector('h1', :text => 'The Productivenator')
 	end

 	it "should have the title 'Home'" do
 		visit '/static_pages/home'
 		page.should have_selector('title', :text => "The Productivenator | Home")
 	end
 end

  describe "About page" do
	it "should have the h1 'About'" do
	 	visit '/static_pages/about'
	 	page.should have_selector('h1', :text => 'About')
 	end

 	it "should have the title 'About'" do
 		visit '/static_pages/about'
 		page.should have_selector('title', :text => 'The Productivenator | About')
 	end
 end

 describe "Help page" do
	it "should have the h1 'Help'" do
	 	visit '/static_pages/help'
	 	page.should have_selector('h1', :text => 'Help')
 	end

 	it "should have the title 'Help'" do
 		visit '/static_pages/help'
 		page.should have_selector('title', :text => 'The Productivenator | Help' )
 	end
 end

  describe "Contact page" do
	it "should have the h1 'Contact Us'" do
	 	visit '/static_pages/contact'
	 	page.should have_selector('h1', :text => 'Contact Us')
 	end

 	it "should have the title 'Contact Us'" do
 		visit '/static_pages/contact'
 		page.should have_selector('title', :text => 'The Productivenator | Contact Us')
 	end
  end
end
