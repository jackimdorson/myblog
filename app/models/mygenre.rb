class Mygenre < ApplicationRecord
    has_many :myposts
    
    validates :name, :memo, presence: {message: 'は必須項目です'}
end
