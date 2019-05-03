class Rastrear < ApplicationRecord
	validates :url, presence: true
	validates :date, presence: true
	validates :user, presence: true
end
