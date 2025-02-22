class Event < ApplicationRecord
    belongs_to :organizer
    has_many :tickets
    has_many :users, through: :tickets

    validates :name, presence: true
    validates :location, presence: true
    validates :ticket_price, presence: true, numericality: {greater_than:0, less_than_or_equal_to:20000}
    validates :capacity, presence: true, numericality: {greater_than:0, less_than_or_equal_to:5000}
    validates :start_at, presence: true
    validates :ends_at, presence: true
    validate :not_past_date

    def not_past_date
        if start_at < Date.today
            errors.add(:start_at, 'not in past')
        end
        if ends_at < Date.today
            errors.add(:ends_at, 'not in past')
        end
    end
end
