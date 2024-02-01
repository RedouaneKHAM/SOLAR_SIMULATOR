class AddFeildToSolarkits < ActiveRecord::Migration[7.1]
  def change
    add_column :solarkits, :image, :string
  end
end
