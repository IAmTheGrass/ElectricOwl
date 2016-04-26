class Eocolumn < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eocolcols
	has_many :eodatcols
	has_many :eostoredats, through: :eodatcols
end
