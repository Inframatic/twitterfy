class Micropost < ActiveRecord::
	belongs_to :user
	validates :user_id, presence: true
end
