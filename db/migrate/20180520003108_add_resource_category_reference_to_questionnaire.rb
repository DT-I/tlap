class AddResourceCategoryReferenceToQuestionnaire < ActiveRecord::Migration[5.2]
  def change
    add_reference :questionnaires, :resource_category, foreign_key: true
  end
end
