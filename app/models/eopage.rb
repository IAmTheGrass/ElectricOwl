class Eopage < ActiveRecord::Base
	belongs_to :eoview
	has_many :eodivs, through: :eoview
end
