class Eocolumn < ActiveRecord::Base
	has_many :eocolcols
	has_many :eodatcols
	has_many :eostoredats, through: :eodatcols
end
