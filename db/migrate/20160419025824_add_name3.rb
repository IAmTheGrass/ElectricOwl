class AddName3 < ActiveRecord::Migration
  def change
  	add_column :eodivs, :name, :string
  end
end
