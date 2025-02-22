class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :ends_at
      t.string :location
      t.integer :capacity

      t.timestamps
    end
  end
end
