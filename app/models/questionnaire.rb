class Questionnaire < ApplicationRecord
    has_many :questions
    belongs_to :resource_category
    accepts_nested_attributes_for :questions, allow_destroy: true
end
