class AddUserRefToAbility < ActiveRecord::Migration[5.0]
  def change
    add_reference :abilities, :user, foreign_key: true
  end
end
