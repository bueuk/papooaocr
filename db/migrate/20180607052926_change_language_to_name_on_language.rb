class ChangeLanguageToNameOnLanguage < ActiveRecord::Migration[5.1]
  def up
    rename_column :languages, :language, :name
  end

  def down
    rename_column :languages, :name, :language
  end
end
