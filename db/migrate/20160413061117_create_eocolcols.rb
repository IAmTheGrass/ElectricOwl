class CreateEocolcols < ActiveRecord::Migration
  def change
    create_table :eocolcols do |t|
    	t.integer :eoobject_id
    	t.integer :eocolumn_id
		t.timestamps null: false
    end
  end
end
