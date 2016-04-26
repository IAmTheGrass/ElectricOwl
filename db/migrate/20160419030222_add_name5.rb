class AddName5 < ActiveRecord::Migration
  def change
  	add_column :eopagcols, :name, :string
  end
end
