class RemoveBeachFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :beach, :boolean
    remove_column :activities, :mountain, :boolean
  end
end
