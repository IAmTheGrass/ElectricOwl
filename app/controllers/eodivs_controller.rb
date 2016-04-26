class EodivsController < ApplicationController
	def new
		@eodiv = Eodiv.new
	end

	def create
		@eodiv = Eodiv.create(eodiv_params)
	end

	def index
		@eodivs = Eodiv.all
	end
	
	private
	def eodiv_params
		params.require(:eodiv).permit(:eopartial_id, :eoview_id, :name)
	end
end
