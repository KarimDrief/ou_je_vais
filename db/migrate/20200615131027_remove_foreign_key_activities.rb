class RemoveForeignKeyActivities < ActiveRecord::Migration[6.0]
  def change
    remove_reference :activities, :country
  end
end
