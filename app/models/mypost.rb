class Mypost < ApplicationRecord
    belongs_to :mygenre, foreign_key: :genre_id

    validates :title, :content, presence: {message: 'は必須項目です'}
    validates :price, numericality: {message: 'は数字で入力してください'}
    validates :content, length: {maximaum:300 , minimum:5 }
    validates :genre_id, numericality: {less_than_or_equal_to:3, message: 'はジャンル一覧の中からお選び下さい'}

end