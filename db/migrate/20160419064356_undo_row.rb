class UndoRow < ActiveRecord::Migration
  def change
  	remove_column :eostoredats, :eorow
  end
end
