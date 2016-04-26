class GenericsController < ApplicationController
	def index
		@eoapp = Eoapp.find(params[:id])
	end
	def findex
		@eoapp = Eoapp.find(params[:id])
		@eoobject = Eoobject.find(params[:obj])
	end
	def fnew
		@eostoredats = Eostoredat.all
		@eorows = Eorow.all
		@eoapp = Eoapp.find(params[:id])
		@eoobject = Eoobject.find(params[:obj])
		@loopcount = @eoobject.eocolcols.count
		@loopcount.times do |y|
			@eorowcol = Eorowcol.new
			@eorow = Eorow.new
			@eorow = Eorow.new
			@eorowdatcol = Eorowdatcol.new
			@eostoredat = Eostoredat.new
			@eodatcol = Eodatcol.new
		end
	end

	def create
		@eoapp = Eoapp.find(params[:id])
	end
end
