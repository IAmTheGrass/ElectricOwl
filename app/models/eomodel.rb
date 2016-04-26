class Eomodel < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :eoapps
	has_many :eoobjcols
	has_many :eoobjects, through: :eoobjcols
end
