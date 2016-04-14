class ChangeName < ActiveRecord::Migration
  def change
  	rename_column :eocolumns, :type, :coltype
  end
end
