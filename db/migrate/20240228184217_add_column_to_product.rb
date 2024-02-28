class AddColumnToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :photo_url, :string
  end
end
