class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.string  :name
      t.integer :creative_builder_id
      t.integer :ad_size_id
      t.string  :type
      t.integer :primary_feature_id
    end

    create_table :flights do |t|
      t.jsonb   :creative_configuration
    end

    create_table :rate_cards do |t|
    end

    create_table :rate_plans do |t|
      t.integer :rate_card_id
      t.jsonb   :creative_configuration
    end

    create_table :creative_builder_creatives do |t|
      t.string  :creative_feature_ids
    end

    create_table :ad_sizes do |t|
      t.string  :name
      t.string  :device_ids
    end

    create_table :formats do |t|
      t.string  :name
    end

    create_table :creative_features do |t|
      t.string  :name
    end

    create_table :groups do |t|
      t.string  :name
    end

    create_table :creative_formats_features do |t|
      t.integer :group_id
      t.integer :format_id
      t.string  :creative_feature_ids
    end
  end
end
