class Eorowcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eoobject
	belongs_to :eorow
end
