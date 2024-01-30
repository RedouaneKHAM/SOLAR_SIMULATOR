class CreateSimulations < ActiveRecord::Migration[7.1]
  def change
    create_table :simulations do |t|
      t.string :type_of_property
      t.string :region
      t.integer :avg_year_consumption
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end