class CreateEopages < ActiveRecord::Migration
  def change
    create_table :eopages do |t|
    	t.string :name
    	t.integer :eoview_id
    	t.timestamps null: false
    end
  end
end
