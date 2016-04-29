class Eopage < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eoview
	has_many :eodivs, through: :eoview
end
