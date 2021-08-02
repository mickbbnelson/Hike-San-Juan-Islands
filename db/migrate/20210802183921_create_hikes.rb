class CreateHikes < ActiveRecord::Migration[6.1]
  def change
    create_table :hikes do |t|
      t.integer :island_id
      t.string :name
      t.text :description
      t.string :location
      t.string :difficulty
      t.integer :distance

      t.timestamps
    end
  end
end
