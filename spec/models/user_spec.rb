require 'spec_helper'

describe User do 
    pending "add some examples to (or delete) #{__FILE__}"
    before {@user = User.new(name:"aijian", email: "aijian@11.com")}
	subject {@user}

	it{
		should respone_to(:name)
	}
	it {
		should respone_to(:email)
	}

end
