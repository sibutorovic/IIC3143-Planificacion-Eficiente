class CreateUnitHeads < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_heads do |t|
      t.string :email
      t.string :password
      t.string :name

      t.timestamps
    end
  end
end
