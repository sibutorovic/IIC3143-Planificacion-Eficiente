class RemoveEmailFromTeachers < ActiveRecord::Migration[5.0]
  def change
    remove_column :teachers, :email, :string
  end
end
