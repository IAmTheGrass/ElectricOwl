class DelDat < ActiveRecord::Migration
  def change
  	drop_table :eodata
  end
end
