class EoviewsController < ApplicationController
	def new
		@eoview = Eoview.new
	end

	def create
		@eoview = Eoview.create(eoview_params)
	end

	def index
		@eoviews = Eoview.all
	end
	
	private
	def eoview_params
		params.require(:eoview).permit(:divnum, :name)
	end
end
