class TerminalsController < ApplicationController
	def testview
		@useme = Eoapp.find(1)
	end
end
