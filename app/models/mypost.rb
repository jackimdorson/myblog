class Mypost < ApplicationRecord

    belongs_to :mygenre

    validates :title, :content, presence: {message: 'は必須項目です'}
    validates :price, :genre_id, numericality: {message: 'は数字で入力してください'}
    validates :content, length: {maximaum:300 , minimum:5 }
    

end
