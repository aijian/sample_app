require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe UsersHelper do
  pending "add some examples to (or delete) #{__FILE__}"

  def full_title(pageTile)
	base_title = "Ruby On Rails Sample App"
	if pageTile.empty?
		base_title
	else
		"#{base_title} | #{pageTitle}"
	end
	
  end
end
