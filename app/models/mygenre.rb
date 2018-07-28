class Mygenre < ApplicationRecord

    has_many :myblog
    
    validates :name, :memo, presence: {message: 'は必須項目です'}

end
