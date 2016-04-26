class Eostoredat < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eodatcols
	has_one :eocolumn, through: :eodatcols
end
