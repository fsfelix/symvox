class AddCategoryIdToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :category_id, :integer
  end
end
