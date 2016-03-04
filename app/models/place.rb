class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :photos
	geocoded_by :address
	after_validation :geocode
	
	validates :name, presence: true
	validates :name, length: {minimum: 3}
	validates :description, presence: true
	validates :address, presence: true
end
