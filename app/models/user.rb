class User < ApplicationRecord
    validates :name, presence: true
    validates :mobile, presence: true
end
