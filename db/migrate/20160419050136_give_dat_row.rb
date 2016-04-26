class GiveDatRow < ActiveRecord::Migration
  def change
  	add_column :eostoredats, :eorow, :integer
  end
end
