class Teacher < ApplicationRecord
	has_many :students
	belongs_to :lesson
end
