class CreateEodivs < ActiveRecord::Migration
  def change
    create_table :eodivs do |t|
    	t.integer :eopartial_id
    	t.integer :eoview_id
		t.timestamps null: false
    end
  end
end
