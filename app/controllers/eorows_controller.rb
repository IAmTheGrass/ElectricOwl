class EorowsController < ApplicationController
	def new
		@eorow = Eorow.new
	end

	def create
		@eorow = Eorow.create(eorow_params)
	end

	def index
		@eorows = Eorow.all
	end
	
	private
	def eorow_params
		params.require(:eorow).permit(:name)
	end
end
