class User < ApplicationRecord
	has_many :comments, :class_name => 'Comment', :foreign_key => 'commenter_id'
	has_many :likes, :class_name => 'Liker', :foreign_key => 'liker_id'
	has_many :gossips, :class_name => 'Gossip', :foreign_key => 'author_id'

	validates :name, presence: true, length: { maximum: 50 }
	
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                    format: { with: VALID_EMAIL_REGEX },
	                    uniqueness: { case_sensitive: false }
	
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

end
