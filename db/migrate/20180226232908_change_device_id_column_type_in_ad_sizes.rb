class ChangeDeviceIdColumnTypeInAdSizes < ActiveRecord::Migration
  def change
    remove_column :ad_sizes, :device_ids
    add_column :ad_sizes, :device_id, :integer
  end
end
