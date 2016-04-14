class EomodelsController < ApplicationController
	def new
		@eomodel = Eomodel.new
	end

	def create
		@eomodel = Eomodel.create(eomodel_params)
	end

	def index
		@eomodels = Eomodel.all
	end
	
	private
	def eomodel_params
		params.require(:eomodel).permit(:name)
	end
end
