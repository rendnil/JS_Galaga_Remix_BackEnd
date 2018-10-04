class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :user_id
      t.integer :score
      t.float :hit_percentage

      t.timestamps
    end
  end
end
