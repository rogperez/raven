class AddDevicesTable < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
    end

    add_column :creatives, :device_id, :integer
  end
end
