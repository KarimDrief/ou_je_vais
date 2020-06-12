class AddMontagneToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :montagne, :boolean
  end
end
