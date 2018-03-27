json.extract! student, :id, :name, :age, :phone, :lesson_id, :teacher_id, :created_at, :updated_at
json.url student_url(student, format: :json)
