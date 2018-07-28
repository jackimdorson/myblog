# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mygenre.create(name:'伝記', memo:'伝記です')
Mygenre.create(name:'小説', memo:'小説です')
Mypost.create(title:'あんぽん', author:'佐野眞一', price:'500', genre_id:'1', content:'softbank孫正義の伝記')
Mypost.create(title:'金持ち父さんと貧乏父さん', author:'ロバートキヨサキ', price:'700', genre_id:'2', content:'安定を求める貧乏父さん、挑戦する金持ち父さん')
