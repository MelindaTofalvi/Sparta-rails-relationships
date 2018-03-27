json.extract! lesson, :id, :subject, :level, :teacher_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
