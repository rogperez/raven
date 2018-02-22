class CreativeBuilderCreative < ActiveRecord::Base
  has_many :creatives
  has_many :creative_features
end
