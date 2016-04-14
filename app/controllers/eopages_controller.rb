class EopagesController < ApplicationController
	def new
		@eopage = Eopage.new
	end

	def create
		@eopage = Eopage.create(eopage_params)
	end

	def index
		@eopages = Eopage.all
	end
	
	private
	def eopage_params
		params.require(:eopage).permit(:name, :eoview_id)
	end
end
