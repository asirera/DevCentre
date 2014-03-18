class Link < ActiveRecord::Base
  belongs_to:users
  attr_accessible :img_url, :name, :url, :user_id
end
