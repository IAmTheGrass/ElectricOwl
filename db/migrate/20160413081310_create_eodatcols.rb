class CreateEodatcols < ActiveRecord::Migration
  def change
    create_table :eodatcols do |t|
    	t.integer :eocolumn_id
    	t.integer :eodata_id
		t.timestamps null: false
    end
  end
end
