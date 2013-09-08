class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.boolean :fiction
      t.boolean :nonfiction
      t.string :name

      t.timestamps
    end
  end
end
