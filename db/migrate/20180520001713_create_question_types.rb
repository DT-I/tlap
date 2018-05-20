class CreateQuestionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :question_types do |t|
      t.string :question_type_name
      t.string :question_type_slug

      t.timestamps
    end
  end
end
