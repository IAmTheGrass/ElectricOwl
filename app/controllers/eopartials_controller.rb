class EopartialsController < ApplicationController
	def new
		@eopartial = Eopartial.new
	end

	def create
		@eopartial = Eopartial.create(eopartial_params)
	end

	def index
		@eopartials = Eopartial.all
	end
	
	private
	def eopartial_params
		params.require(:eopartial).permit(:name)
	end
end
