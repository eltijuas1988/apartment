class AddPaperclipToCondos < ActiveRecord::Migration
  def change
    add_attachment :condos, :image
  end
end
