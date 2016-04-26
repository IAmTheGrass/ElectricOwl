class AddName1 < ActiveRecord::Migration
  def change
  	add_column :eocolcols, :name, :string
  end
end
