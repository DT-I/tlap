class CreateQuestionOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :question_options do |t|
      t.string :display_text
      t.references :question
      t.timestamps
    end
  end
end
