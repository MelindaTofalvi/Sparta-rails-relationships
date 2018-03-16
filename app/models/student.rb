class Student < ApplicationRecord
	has_one :teacher
	belongs_to :lesson, optional: true
end
