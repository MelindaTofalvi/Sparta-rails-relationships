class Lesson < ApplicationRecord
	has_many :student
	has_many :teacher
	validates :subject, presence: true
	validates :level, presence: true
end
