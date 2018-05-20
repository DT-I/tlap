class AddParentQuestionIdToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :parent_question_id, :integer
  end
end
