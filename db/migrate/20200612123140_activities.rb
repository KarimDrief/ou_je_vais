class Activities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :urbain,   :boolean
    add_column :activities, :culturel, :boolean
    add_column :activities, :nature,   :boolean
    add_column :activities, :mer,   :boolean
  end
end
