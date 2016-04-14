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
	
	private
	def eostoredat_params
		params.require(:eostoredat).permit(:eoinput)
	end
end
