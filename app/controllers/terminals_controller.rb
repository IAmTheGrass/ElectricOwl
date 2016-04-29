class TerminalsController < ApplicationController
	def testview
		@useme = Eoapp.find(1)
	end

	def rubyfox
		@useme = Eoapp.find(1)
	end

	def index
		@eoapps = Eoapp.all
	end

	def show
		@eoapp = Eoapp.find(params[:id])
	end

	def land
		@eoapps = Eoapp.all
	end

	def crud
		@eoapp = Eoapp.find(params[:id])
	end
end
