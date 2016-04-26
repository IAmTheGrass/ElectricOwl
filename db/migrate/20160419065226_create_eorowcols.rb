class CreateEorowcols < ActiveRecord::Migration
  def change
    create_table :eorowcols do |t|
    	t.integer :eoobject_id
    	t.integer :eorow_id
		t.timestamps null: false
    end
  end
end
