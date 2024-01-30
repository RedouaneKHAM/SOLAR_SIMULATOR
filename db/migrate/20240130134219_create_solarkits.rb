class CreateSolarkits < ActiveRecord::Migration[7.1]
  def change
    create_table :solarkits do |t|
      t.integer :power
      t.integer :min_production
      t.integer :max_production
      t.integer :price
      t.integer :installation_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
