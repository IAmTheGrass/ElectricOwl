class CreateEopagcols < ActiveRecord::Migration
  def change
    create_table :eopagcols do |t|
    	t.integer :eoapp_id
    	t.integer :eopage_id
		t.timestamps null: false
    end
  end
end
