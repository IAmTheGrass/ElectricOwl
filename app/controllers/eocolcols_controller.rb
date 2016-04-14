class EocolcolsController < ApplicationController
	def new
		@eocolcol = Eocolcol.new
	end

	def create
		@eocolcol = Eocolcol.create(eocolcol_params)
	end

	def index
		@eocolcols = Eocolcol.all
	end
	
	private
	def eocolcol_params
		params.require(:eocolcol).permit(:eoobject_id, :eocolumn_id)
	end
end
