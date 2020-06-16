class AddCityToCountry < ActiveRecord::Migration[6.0]
  def change
   add_reference :countries, :city, index: true
  end
end
