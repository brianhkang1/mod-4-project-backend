class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fav_food
      t.string :worst_food
      t.string :avatar

      t.timestamps
    end
  end
end
