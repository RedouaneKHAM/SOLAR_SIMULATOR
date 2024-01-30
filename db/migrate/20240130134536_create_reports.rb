class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :power
      t.integer :min_production
      t.integer :max_production
      t.integer :daily_consumption
      t.references :simulation, null: false, foreign_key: true


      t.timestamps
    end
  end
end
