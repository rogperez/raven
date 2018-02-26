class AddVideoCreativeTypesTable < ActiveRecord::Migration
  def change
    create_table :video_creative_types do |t|
      t.string :name
    end
  end
end
