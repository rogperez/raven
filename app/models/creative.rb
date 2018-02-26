class Creative < ActiveRecord::Base
  belongs_to :ad_size
  belongs_to :creative_builder_creative
  belongs_to :device
end
