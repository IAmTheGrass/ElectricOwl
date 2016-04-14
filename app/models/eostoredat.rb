class Eostoredat < ActiveRecord::Base
	has_many :eodatcols
	has_one :eocolumn, through: :eodatcols
end
