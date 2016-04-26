class Eoobjcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eomodel
	belongs_to :eoobject
end
