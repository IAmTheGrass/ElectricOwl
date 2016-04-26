class AddName6 < ActiveRecord::Migration
  def change
  	add_column :eostoredats, :name, :string
  end
end
