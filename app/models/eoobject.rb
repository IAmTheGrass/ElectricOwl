class Eoobject < ActiveRecord::Base
	has_many :eoobjcols
	has_many :eomodels, through: :eoobjcols
	has_many :eocolcols
	has_many :eocolumns, through: :eocolcols
end
