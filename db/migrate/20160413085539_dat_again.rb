class DatAgain < ActiveRecord::Migration
  def change
  	rename_column :eodatcols, :eostoredats_id, :eostoredat_id
  end
end
