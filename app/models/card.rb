class Card < ActiveRecord::Base
	belongs_to :user

	validates :user_id, presence: true

	validates :name, length: {minimum: 2}, presence: true


end
