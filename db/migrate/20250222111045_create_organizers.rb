class CreateOrganizers < ActiveRecord::Migration[7.1]
  def change
    create_table :organizers do |t|
      t.string :name
      t.string :email_id
      t.integer :contact_no

      t.timestamps
    end
  end
end
