class User < ActiveRecord::Base
	has_many :user_hobbies

	accepts_nested_attributes_for :user_hobbies, :allow_destroy => true
end
