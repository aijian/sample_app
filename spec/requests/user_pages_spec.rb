require 'spec_helper'


describe "User Pages" do 
	
	describe "signup" do 
		before {visit signup_path}
		let(:submit) {"Create my account"}

		describe "with invalide information" do 
			it "shoule not create a account" do 
				expect {click_button submit}.not_to change(User, :count)
			end
		end
	end

end
