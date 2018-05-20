class AddQuestionnaireIdToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :questionnaire
  end
end
