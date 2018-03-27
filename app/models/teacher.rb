class Teacher < ApplicationRecord
	has_many :students
	has_one :lesson
	validates :name, presence: true
	validates :age, presence: true
	validates :email, presence: true
end
