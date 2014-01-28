class GoController < ApplicationController

	def index
		@link = Link.last.random_string
	end

	def redirect
		link = Link.find_by(:random_string => params[:random_string])
		
		x = link.url

		if x.match("http://") != nil
		        redirect_to "#{x}"
		elsif x.match("www.") != nil
		        redirect_to "http://" + "#{x}"
		else
		        redirect_to "http://www." + "#{x}"
		end
	end

	def preview
		@total_count = Link.count
	end


end
