class EoobjcolsController < ApplicationController
	def new
		@eoobjcol = Eoobjcol.new
	end

	def create
		@eoobjcol = Eoobjcol.create(eoobjcol_params)
	end

	def index
		@eoobjcols = Eoobjcol.all
	end
	
	private
	def eoobjcol_params
		params.require(:eoobjcol).permit(:eomodel_id, :eoobject_id, :name)
	end
end
