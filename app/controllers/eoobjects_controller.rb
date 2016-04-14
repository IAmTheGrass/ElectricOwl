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
	
	private
	def eoobject_params
		params.require(:eoobject).permit(:name)
	end
end
