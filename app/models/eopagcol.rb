class Eopagcol < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	belongs_to :eoapp
	belongs_to :eopage
end
