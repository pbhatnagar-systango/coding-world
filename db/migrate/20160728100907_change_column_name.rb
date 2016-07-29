class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :challenges, :type, :qtype
  end
end
