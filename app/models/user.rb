class User < ApplicationRecord
    validates :name, presence: true
    validates :mobile, presence: true, length: { is: 10 }

    validates :gender, presence: true, inclusion:{ in: %w(male female other),
    message: "%{value} is not valid" }
end
