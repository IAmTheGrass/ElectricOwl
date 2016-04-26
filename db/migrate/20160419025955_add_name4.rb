class AddName4 < ActiveRecord::Migration
  def change
  	add_column :eoobjcols, :name, :string
  end
end
