class AdSize < ActiveRecord::Base
  has_many :creatives
  belongs_to :device
  belongs_to :format
end
