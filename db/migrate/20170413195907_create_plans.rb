class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :grade
      t.string :subject
      t.integer :year
      t.integer :total_hours

      t.timestamps
    end
  end
end
