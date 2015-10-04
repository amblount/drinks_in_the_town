class AddUrlToNeighborhood < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :url, :string
  end
end
