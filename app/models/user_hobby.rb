class UserHobby < ActiveRecord::Base
	belongs_to :user
	belongs_to :hobby

	has_many :user_hobby_locations

	accepts_nested_attributes_for :user_hobby_locations, :allow_destroy => true
end
