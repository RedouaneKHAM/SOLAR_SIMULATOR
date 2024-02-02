class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :phone_number
      t.text :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
