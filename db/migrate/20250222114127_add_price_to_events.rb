class AddPriceToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :ticket_price, :decimal
  end
end
