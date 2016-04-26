class Eoview < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eodivs
	has_one :eopage
	has_many :eopartials, through: :eodivs
end
