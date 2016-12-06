class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.text :description
      t.string :instrument
      t.string :email

      t.timestamps null: false
    end
  end
end
