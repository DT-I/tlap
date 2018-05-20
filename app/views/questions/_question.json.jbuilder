json.extract! question, :id, :question_text, :question_answer, :question_type, :created_at, :updated_at
json.url question_url(question, format: :json)
