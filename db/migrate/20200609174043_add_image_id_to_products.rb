class AddImageIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :image_id, :string
  end
end
