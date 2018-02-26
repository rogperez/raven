class AddFormatIdToAdSize < ActiveRecord::Migration
  def change
    add_column :ad_sizes, :format_id, :integer
  end
end
