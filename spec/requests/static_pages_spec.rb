require 'spec_helper'


describe "Static Pages" do 
	describe "Home Page" do 
		it "should hava a content 'Sample App'" do 
			visit '/static_pages/home'
			expect(page).to	have_content('Sample App')
		end
	end

	describe "About Page" do 
		it "shoueld have content about" do 
			visit '/static_pages/about'
			expect(page).to have_content('about')
		end
	end

end
