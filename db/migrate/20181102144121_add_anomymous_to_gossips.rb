class AddAnomymousToGossips < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :anonymous, :boolean
  end
end
