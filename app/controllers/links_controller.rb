class LinksController < ApplicationController

	#Display history of links creates
	def index
		@links = Link.all
	end

	#New instance of a link
	def new
		@link = Link.new
	end

	#Add new link to database
	def create
		
	end

	def show
	end

end
