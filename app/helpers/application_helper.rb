module ApplicationHelper

	def full_title(page_title)
		baseTitle = "Ruby On Rails Sample App"
		if page_title.empty?
			baseTitle
		else
			"#{baseTitle} | #{page_title}"
		end
		
	end
end
