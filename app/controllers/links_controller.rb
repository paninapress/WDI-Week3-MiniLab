class LinksController < ApplicationController

	#Display history of links creates
	def index
		@links = Link.all
		@link = Link.new
	end

	#New instance of a link
	def new
		@link = Link.new
	end

	#Add link and random link to database
	def create
		random_str = SecureRandom.urlsafe_base64(10)
		link = Link.create(url: params["link"]["url"], random_string: random_str)
		redirect_to link_path(link.random_string)
	end

	def show
		@link = Link.find_by(random_string: params["random_string"])
	end

	def preview
		@link = Link.find_by(random_string: params["random_string"])
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

end
