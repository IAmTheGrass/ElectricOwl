class Eorowdatcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eorow
	belongs_to :eostoredat
end
