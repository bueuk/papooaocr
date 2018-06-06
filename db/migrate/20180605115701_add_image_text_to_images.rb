class AddImageTextToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :image_text, :string
  end
end
