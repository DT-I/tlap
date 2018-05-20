class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.string :QuestionnaireName
      t.string :QuestionnaireSlug

      t.timestamps
    end
  end
end
