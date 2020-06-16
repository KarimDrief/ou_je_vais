class AddKeyCityActivity < ActiveRecord::Migration[6.0]
  def change
    add_reference :cities, :country
    add_reference :activities, :city

  end
end
