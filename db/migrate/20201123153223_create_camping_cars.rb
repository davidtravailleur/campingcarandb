class CreateCampingCars < ActiveRecord::Migration[6.0]
  def change
    create_table :camping_cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :title
      t.string :description
      t.string :brand
      t.integer :sleeps_capacity
      t.integer :price_per_day
      t.string :location
      t.string :availability

      t.timestamps
    end
  end
end
