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
	
	def edit
		@eoobjcol = Eoapp.find(params[:id])
	end

	def update
		@eoobjcols = Eoobjcol.all
		@eoobjcol = Eoobjcol.find(params[:id])

		@eoobjcol.update_attributes(eoobjcol_params)
	end

	private
	def eoobjcol_params
		params.require(:eoobjcol).permit(:eomodel_id, :eoobject_id, :name)
	end
end
