class AddNeighborhoodToUsers < ActiveRecord::Migration
  def change
    add_column :users, :neighborhood_id, :integer
  end
end
