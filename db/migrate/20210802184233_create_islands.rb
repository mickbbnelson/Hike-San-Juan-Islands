class CreateIslands < ActiveRecord::Migration[6.1]
  def change
    create_table :islands do |t|
      t.string :name
      t.text :description
      t.string :accessed_by

      t.timestamps
    end
  end
end
