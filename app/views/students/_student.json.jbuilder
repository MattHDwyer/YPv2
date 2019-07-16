json.extract! student, :id, :team_id, :first_name, :last_name, :year_level, :created_at, :updated_at
json.url student_url(student, format: :json)
