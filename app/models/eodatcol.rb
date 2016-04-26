class Eodatcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eocolumn
	belongs_to :eostoredat
end
