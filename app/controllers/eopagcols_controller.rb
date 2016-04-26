class EopagcolsController < ApplicationController
	def new
		@eopagcol = Eopagcol.new
	end

	def create
		@eopagcol = Eopagcol.create(eopagcol_params)
	end

	def index
		@eopagcols = Eopagcol.all
	end
	
	private
	def eopagcol_params
		params.require(:eopagcol).permit(:eoapp_id, :eopage_id, :name)
	end
end
