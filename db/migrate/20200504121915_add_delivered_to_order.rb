class AddDeliveredToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivered, :boolean, default: false
  end
end
