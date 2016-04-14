class CreateEoobjcols < ActiveRecord::Migration
  def change
    create_table :eoobjcols do |t|
    	t.integer :eomodel_id
    	t.integer :eoobject_id
		t.timestamps null: false
    end
  end
end
