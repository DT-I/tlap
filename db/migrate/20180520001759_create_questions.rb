class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :question_answer
      t.references :question_type

      t.timestamps
    end
  end
end
