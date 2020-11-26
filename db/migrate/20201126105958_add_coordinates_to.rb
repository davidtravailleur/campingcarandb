class AddCoordinatesTo < ActiveRecord::Migration[6.0]
  def change
    add_column :camping_cars, :latitude, :float
    add_column :camping_cars, :longitude, :float
  end
end
