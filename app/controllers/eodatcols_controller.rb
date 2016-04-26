class EodatcolsController < ApplicationController
	def new
		@eodatcol = Eodatcol.new
	end

	def create
		@eodatcol = Eodatcol.create(eodatcol_params)
	end

	def index
		@eodatcol = Eodatcol.all
	end

	def edit
		@eodatcol = Eodatcol.find(params[:id])
	end

	def update
		@eodatcols = Eodatcol.all
		@eodatcol = Eodatcol.find(params[:id])

		@eodatcol.update_attributes(eodatcol_params)
	end
	
	private
	def eodatcol_params
		params.require(:eodatcol).permit(:eocolumn_id, :eostoredat_id, :name)
	end
end
