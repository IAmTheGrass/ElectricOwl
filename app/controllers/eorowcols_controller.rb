class EorowcolsController < ApplicationController
	def new
		@eorowcol = Eorowcol.new
	end

	def create
		@eorowcol = Eorowcol.create(eorowcol_params)
	end

	def index
		@eorowcols = Eorowcol.all
	end
	
	private
	def eorowcol_params
		params.require(:eorowcol).permit(:name, :eoobject_id, :eorow_id)
	end
end
