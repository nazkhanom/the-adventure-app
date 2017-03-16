class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
