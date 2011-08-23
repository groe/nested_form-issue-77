class UserHobbyLocation < ActiveRecord::Base
  belongs_to :user_hobby
  belongs_to :location
end
