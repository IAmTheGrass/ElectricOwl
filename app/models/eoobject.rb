class Eoobject < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eoobjcols
	has_many :eomodels, through: :eoobjcols
	has_many :eocolcols
	has_many :eocolumns, through: :eocolcols
	has_many :eocolumns, through: :eocolcols
	has_many :eodatcols, through: :eocolumns
	has_many :eorowcols
	has_many :eorows, through: :eorowcols
	has_many :eorowdatcols, through: :eorows
	has_many :eostoredats, through: :eorowdatcols

	accepts_nested_attributes_for :eorowcols
	accepts_nested_attributes_for :eorows
	accepts_nested_attributes_for :eorowdatcols
	accepts_nested_attributes_for :eostoredats
	accepts_nested_attributes_for :eodatcols
end
