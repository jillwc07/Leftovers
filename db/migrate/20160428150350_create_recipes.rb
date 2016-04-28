class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :image_url, null: false
      t.string :source_url, null: false
      t.string :f2f_url, null: false
      t.string :title, null: false
      t.string :publisher, null: false
      t.string :publisher_url, null: false
      t.string :social_rank, null: false
      t.string :ingredients, null: false

      t.timestamps null: false
    end
  end
end
