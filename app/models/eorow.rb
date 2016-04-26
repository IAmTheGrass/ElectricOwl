class Eorow < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eorowcols
	has_many :eorowdatcols
	has_many :eostoredats, through: :eorowdatcols
end
