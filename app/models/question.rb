class Question < ApplicationRecord
    belongs_to :questionnaire, optional: true
    belongs_to :question_type
    belongs_to :affirmative_resource, class_name: :resource, foreign_key: :affirmative_resource_id, optional: true
    belongs_to :negative_resource, class_name: :resource, foreign_key: :negative_resource_id, optional: true

    belongs_to :parent_question, class_name: "Question", optional: true
    has_many :child_questions, class_name: "Question", foreign_key: :parent_question_id

    accepts_nested_attributes_for :child_questions, allow_destroy: true
end
