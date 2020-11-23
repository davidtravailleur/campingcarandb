class ChangeDescriptionAndAvailabilityToCampingCars < ActiveRecord::Migration[6.0]
  def change
    change_column :camping_cars, :availability, 'boolean USING CAST(availability AS boolean)'
    change_column :camping_cars, :description, :text
  end
end
