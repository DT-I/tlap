class AddResourceCategoryToResource < ActiveRecord::Migration[5.2]
  def change
    add_reference :resources, :resource_category, foreign_key: true
  end
end