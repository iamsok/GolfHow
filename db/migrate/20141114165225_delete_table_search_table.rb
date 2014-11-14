class DeleteTableSearchTable < ActiveRecord::Migration
  def up
    drop_table :searches
  end

  def down
    create_table :searches do |t|
      t.string   "name",       null: false
      t.string   "location",   null: false

      t.timestamps
    end
  end
end
