class CreateEostoredats < ActiveRecord::Migration
  def change
    create_table :eostoredats do |t|
    	t.string :eoinput
		t.timestamps null: false
    end
  end
end
