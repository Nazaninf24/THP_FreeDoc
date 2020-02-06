class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city, optional: true
	has_many :links
	has_many :specialties, through: :links
end
