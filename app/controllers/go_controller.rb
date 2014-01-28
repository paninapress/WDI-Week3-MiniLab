class GoController < ApplicationController

	
		# @link = Link.last.random_string

	

	def preview
		@total_count = Link.count
	end


end
