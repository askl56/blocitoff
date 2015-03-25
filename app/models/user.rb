class User < ActiveRecord::Base
	has_many :todo_lists
	has_secure_password

	validates_uniqueness_of :email
end
