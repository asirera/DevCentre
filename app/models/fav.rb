class Fav < ActiveRecord::Base
   belongs_to:users
  attr_accessible :name, :url, :user_id
end
