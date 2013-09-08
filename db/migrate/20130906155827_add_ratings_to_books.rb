class AddRatingsToBooks < ActiveRecord::Migration
  
  def up
    add_column :books, :ratings, :integer
  end
  def down
    remove_column :books, :ratings
  end
end
