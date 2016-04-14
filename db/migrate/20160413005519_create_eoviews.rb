class CreateEoviews < ActiveRecord::Migration
  def change
    create_table :eoviews do |t|
    	t.integer :divnum
    	t.string :name
		t.timestamps null: false
    end
  end
end
