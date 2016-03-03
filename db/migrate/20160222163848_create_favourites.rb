class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.string :title
      t.string :url
      t.string :image
      t.string :source
      t.string :category
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
