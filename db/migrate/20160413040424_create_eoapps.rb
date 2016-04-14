class CreateEoapps < ActiveRecord::Migration
  def change
    create_table :eoapps do |t|
    	t.string :name
    	t.string :frl
		t.timestamps null: false
    end
  end
end
