class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :time
      t.text :summary
      t.text :ingredients
      t.text :instructions
      t.integer :user_id

      t.timestamps
    end
  end
end
