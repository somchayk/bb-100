class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Last_name, :string
    add_column :users, :last_name, :string
  end
end
