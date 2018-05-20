class AddResourceReferencesToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :affirmative_resource_id, :integer, null: true
    add_column :questions, :negative_resource_id, :integer, null: true
  end
end
