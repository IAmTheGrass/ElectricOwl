class Eoview < ActiveRecord::Base
	has_many :eodivs
	has_one :eopage
	has_many :eopartials, through: :eodivs
end
