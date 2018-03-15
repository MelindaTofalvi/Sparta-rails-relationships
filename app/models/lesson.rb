class Lesson < ApplicationRecord
	has_many :student
	has_many :teacher
end
