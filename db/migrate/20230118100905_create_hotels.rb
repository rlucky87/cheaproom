class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :address
      t.string :name
      t.string :country
      t.string :city
      t.integer :rating

      t.timestamps
    end
  end
end
