class Comment < ApplicationRecord
  belongs_to :commenter, class_name: 'User', optional: true
  belongs_to :gossip
end