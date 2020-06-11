class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.text :quarantine_rules
      t.integer :active_quarantine
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
