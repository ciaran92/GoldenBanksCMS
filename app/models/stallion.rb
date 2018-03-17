class Stallion < ApplicationRecord

	mount_uploader :image, ImageUploader
	mount_uploader :mother_image, ImageUploader
	mount_uploader :father_image, ImageUploader

	validates :name, presence: true, length: {maximum: 35}
	validates :image, presence: true
	validates :reg_number, presence: true
	validates :birth_date, presence: true
	validates :sex, presence: true
	validates :colour, presence: true
	validates :markings, presence: true
	validates :breeder, presence: true
	validates :description, presence: true
	validates :mother_name, presence: true
	validates :mother_image, presence: true
	validates :father_name, presence: true
	validates :father_image, presence: true
	validates :breeding_description, presence: true
end
