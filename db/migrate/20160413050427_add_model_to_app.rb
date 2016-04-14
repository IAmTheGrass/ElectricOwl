class AddModelToApp < ActiveRecord::Migration
  def change
  		change_table :eoapps do |t|
  		t.integer :eomodel_id
  	end
  end
end
