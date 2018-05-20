class Question < ApplicationRecord
    belongs_to :questionnaire
    belongs_to :question_type
    belongs_to :affirmative_resource, class_name: :resource, foreign_key: :affirmative_resource_id, optional: true
    belongs_to :negative_resource, class_name: :resource, foreign_key: :negative_resource_id, optional: true
end
