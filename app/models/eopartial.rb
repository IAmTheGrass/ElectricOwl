class Eopartial < ActiveRecord::Base
	has_many :eodivs
	has_many :eoviews, through: :eodivs
end
