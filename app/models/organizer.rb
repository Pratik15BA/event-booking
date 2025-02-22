class Organizer < ApplicationRecord
    has_many :events
    validates :name, presence: true
    validates :email_id, presence: true
    validates :contact_no, presence: true
end
