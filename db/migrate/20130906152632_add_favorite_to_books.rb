class AddFavoriteToBooks < ActiveRecord::Migration
  
  
  def up
    add_column :books, :favorite, :string
  end
 
  def down
    remove_column :books, :favorite
  
  end
end



