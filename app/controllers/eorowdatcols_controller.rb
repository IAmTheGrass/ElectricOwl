class EorowdatcolsController < ApplicationController
	def new
		@eorowdatcol = Eorowdatcol.new
	end

	def create
		@eorowdatcol = Eorowdatcol.create(eorowdatcol_params)
	end

	def index
		@eorowdatcols = Eorowdatcol.all
	end
	
	private
	def eorowdatcol_params
		params.require(:eorowdatcol).permit(:name, :eostoredat_id, :eorow_id)
	end
end
