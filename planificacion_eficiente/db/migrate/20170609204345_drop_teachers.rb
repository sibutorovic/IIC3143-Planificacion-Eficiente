class DropTeachers < ActiveRecord::Migration[5.0]
  def change
    drop_table :teachers
  end
end
