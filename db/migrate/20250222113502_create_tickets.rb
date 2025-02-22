class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :seat_number
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
