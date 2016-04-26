class Eocolcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eoobject
	belongs_to :eocolumn
end
