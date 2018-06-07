class AddLanguageIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :language_id, :integer
  end
end
