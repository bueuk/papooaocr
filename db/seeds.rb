# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Language.all.each do |l|
  l.destroy
end

Language.create(name: 'indonesia', lang_code: 'ind')
Language.create(name: 'english', lang_code: 'eng')
Language.create(name: 'arabic', lang_code: 'ara')
Language.create(name: 'japanese', lang_code: 'jpn')
