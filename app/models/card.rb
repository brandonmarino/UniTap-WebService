class Card < ActiveRecord::Base
	has_one :name
	has_one :companyname
	has_one :cardid
	belongs_to :user
end
