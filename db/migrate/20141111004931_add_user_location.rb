class AddUserLocation < ActiveRecord::Migration
  def up
    add_column :users, :address, :string
  end

  def down
    remove_column :users, :address
  end
end
