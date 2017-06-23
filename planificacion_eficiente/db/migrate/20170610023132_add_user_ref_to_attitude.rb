class AddUserRefToAttitude < ActiveRecord::Migration[5.0]
  def change
    add_reference :attitudes, :user, foreign_key: true
  end
end
