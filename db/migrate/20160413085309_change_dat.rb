class ChangeDat < ActiveRecord::Migration
  def change
  	rename_column :eodatcols, :eodata_id, :eostoredats_id
  end
end
