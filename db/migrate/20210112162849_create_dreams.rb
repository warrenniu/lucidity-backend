class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.string :story
      t.string :character
      t.string :place
      t.string :date
      t.string :image
      t.integer :rating
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
