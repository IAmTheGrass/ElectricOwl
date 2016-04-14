class CreateEocolumns < ActiveRecord::Migration
  def change
    create_table :eocolumns do |t|
    	t.string :name
    	t.string :type
		t.timestamps null: false
    end
  end
end
