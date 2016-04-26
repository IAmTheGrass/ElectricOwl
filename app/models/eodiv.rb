class Eodiv < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eopartial
	belongs_to :eoview
end
