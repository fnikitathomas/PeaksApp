class Peak < ApplicationRecord
	has_many :tips
	has_many :climbs
	has_many :users, through: :climbs
end
