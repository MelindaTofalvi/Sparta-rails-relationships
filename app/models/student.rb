class Student < ApplicationRecord
	has_one :teacher
	belongs_to :lesson
	validates :name, presence: true
	validates :age, presence: true
	validates :phone, presence: true
end
