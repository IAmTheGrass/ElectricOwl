class CreateEomodels < ActiveRecord::Migration
  def change
    create_table :eomodels do |t|
    	t.string :name
		t.timestamps null: false
    end
  end
end
