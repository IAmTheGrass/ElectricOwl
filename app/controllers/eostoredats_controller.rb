class EostoredatsController < ApplicationController
	def new
		@eostoredat = Eostoredat.new
	end

	def create
		@eostoredat = Eostoredat.create(eostoredat_params)
	end

	def index
		@eostoredats = Eostoredat.all
	end

	def edit
		@eostoredat = Eostoredat.find(params[:id])
	end

	def update
		@eostoredats = Eostoredat.all
		@eostoredat = Eostoredat.find(params[:id])

		@eostoredat.update_attributes(eostoredat_params)
	end
	
	private
	def eostoredat_params
		params.require(:eostoredat).permit(:eoinput, :name, :eorow)
	end
end
