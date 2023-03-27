class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :address
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
