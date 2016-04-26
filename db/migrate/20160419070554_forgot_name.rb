class ForgotName < ActiveRecord::Migration
  def change
  	add_column :eorowcols, :name, :string
  end
end
