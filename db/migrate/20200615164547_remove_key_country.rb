class RemoveKeyCountry < ActiveRecord::Migration[6.0]
  def change
    remove_reference :countries, :city
    remove_reference :cities, :activity
  end
end
