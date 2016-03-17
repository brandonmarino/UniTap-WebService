class Card < ActiveRecord::Base
	has_one :name
	has_one :companyid
	has_one :objectid
	belongs_to :user
end
