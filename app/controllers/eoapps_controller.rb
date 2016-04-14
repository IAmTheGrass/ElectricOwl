class EoappsController < ApplicationController
	def new
		@eoapp = Eoapp.new
	end

	def create
		@eoapp = Eoapp.create(eoapp_params)
	end

	def index
		@eoapps = Eoapp.all
	end

	def edit
		@eoapp = Eoapp.find(params[:id])
	end

	def update
		@eoapps = Eoapp.all
		@eoapp = Eoapp.find(params[:id])

		@eoapp.update_attributes(eoapp_params)
	end
	
	private
	def eoapp_params
		params.require(:eoapp).permit(:name, :frl, :eomodel_id)
	end
end
