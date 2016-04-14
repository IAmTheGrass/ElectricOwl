class CreateEoobjects < ActiveRecord::Migration
  def change
    create_table :eoobjects do |t|
    	t.string :name
		t.timestamps null: false
    end
  end
end
