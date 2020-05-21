class AddImageToTicketsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :cloudinary_url, :string
  end
end
