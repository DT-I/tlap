class Questionnaire < ApplicationRecord
    has_many :questions
    belongs_to :resource_category
end
