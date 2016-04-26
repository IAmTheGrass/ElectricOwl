class AddName2 < ActiveRecord::Migration
  def change
  	add_column :eodatcols, :name, :string
  end
end
