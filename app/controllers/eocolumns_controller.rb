class EocolumnsController < ApplicationController
	def new
		@eocolumn = Eocolumn.new
	end

	def create
		@eocolumn = Eocolumn.create(eocolumn_params)
	end

	def index
		@eocolumns = Eocolumn.all
	end
	
	private
	def eocolumn_params
		params.require(:eocolumn).permit(:name, :coltype)
	end
end
