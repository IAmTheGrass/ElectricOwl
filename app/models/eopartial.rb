class Eopartial < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eodivs
	has_many :eoviews, through: :eodivs
end
