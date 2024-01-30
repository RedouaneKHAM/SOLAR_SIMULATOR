class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :power
      t.integer :min_production
      t.integer :max_production
      t.integer :daily_consumption

      t.timestamps
    end
  end
end
