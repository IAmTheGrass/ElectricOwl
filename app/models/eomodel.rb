class Eomodel < ActiveRecord::Base
	has_many :eoapps
	has_many :eoobjcols
	has_many :eoobjects, through: :eoobjcols
end
