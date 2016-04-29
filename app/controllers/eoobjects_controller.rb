class EoobjectsController < ApplicationController
	def new
		@eoobject = Eoobject.new
	end

	def create
		@eoobject = Eoobject.create(eoobject_params)
	end

	def index
		@eoobjects = Eoobject.all
	end

	def update
		@eoobject = Eoobject.find(params[:id])
		@loopcount = @eoobject.eocolcols.count
		@loopcount.times do |y|
			@eorowcol = Eorowcol.create(eorowcol_params)
			@eorow = Eorow.create(eorow_params)
			@eorowdatcol = Eorowdatcol.create(eorowdatcol_params)
			@eostoredat = Eostoredat.create(eostoredat_params)
			@eodatcol = Eodatcol.create(eodatcol_params)
		end
		@eoobject.update_attributes(eoobject_params)
	end
	
	private
	def eoobject_params
		params.require(:eoobject).permit(:name)
	end

	def eorowcol_params
		params.require(:eorowcol).permit(:name, :eoobject_id, :eorow_id)
	end

	def eorow_params
		params.require(:eorow).permit(:name)
	end

	def eorowdatcol_params
		params.require(:eorowdatcol).permit(:name, :eostoredat_id, :eorow_id)
	end

	def eostoredat_params
		params.require(:eostoredat).permit(:eoinput, :name, :eorow)
	end

	def eodatcol_params
		params.require(:eodatcol).permit(:eocolumn_id, :eostoredat_id, :name)
	end
end
