json.extract! questionnaire, :id, :QuestionName, :QuestionSlug, :created_at, :updated_at
json.url questionnaire_url(questionnaire, format: :json)
