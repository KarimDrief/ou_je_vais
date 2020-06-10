class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.text :description
      t.string :name
      t.text :adress
      t.boolean :beach
      t.boolean :mountain
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
