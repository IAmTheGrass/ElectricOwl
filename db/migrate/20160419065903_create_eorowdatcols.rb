class CreateEorowdatcols < ActiveRecord::Migration
  def change
    create_table :eorowdatcols do |t|
    	t.string :name
    	t.integer :eostoredat_id
    	t.integer :eorow_id
		t.timestamps null: false
    end
  end
end
