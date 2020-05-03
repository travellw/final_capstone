class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :issue
      t.datetime :created
      t.string :originator
      t.integer :user_id
      t.boolean :emergency
      t.text :resolution
      t.string :status

      t.timestamps
    end
  end
end
