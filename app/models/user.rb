class User < ApplicationRecord
    validates :name, presence: true
    validates :mobile, presence: true, length: { is: 10 }
end
