class Eoapp < ActiveRecord::Base
	has_many :eopagcols
	has_many :eopages, through: :eopagcols
	belongs_to :eomodel
	has_many :eoobjcol, through: :eomodel
end
