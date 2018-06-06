class ChangeImageTextToText < ActiveRecord::Migration[5.1]
  def change
    change_column :images, :image_text, :text
  end
end
