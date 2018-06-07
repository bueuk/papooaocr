class AddLangCodeToLanguages < ActiveRecord::Migration[5.1]
  def up 
    add_column :languages, :lang_code, :string
  end

  def down 
    remove_column :languages, :lang_code, :string
  end
end
