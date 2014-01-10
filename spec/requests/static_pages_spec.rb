require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do
	
		it "should have the content 'Sample App'" do
		visit '/static_pages/home'
		page.should have_content("Sample App")
		end
		
		it "should have the right title" do
		visit '/static_pages/home'
		page.should have_selector('title',
								:text => "Mandarin Chinese Lessons 101 | Home")
		end
	end
	
	describe "help page" do
		
		it "should have the content 'Help'" do
		visit '/static_pages/help'
		page.should have_content("Help")
		end
	
		it "should have the right title" do
		visit '/static_pages/help'
		page.should have_selector('title',
								:text => "Mandarin Chinese Lessons 101 | Help")
		end
	end
	
	describe "about page" do
	
		it "should have the content 'About'" do
		visit '/static_pages/about'
		page.should have_content("About")
		end
	
		it "should have the right title" do
		visit '/static_pages/about'
		page.should have_selector('title',
								:text => "Mandarin Chinese Lessons 101 | About")
		end
		
	end
end