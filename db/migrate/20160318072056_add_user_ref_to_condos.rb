class AddUserRefToCondos < ActiveRecord::Migration
  def change
    add_reference :condos, :user, index: true, foreign_key: true
  end
end
