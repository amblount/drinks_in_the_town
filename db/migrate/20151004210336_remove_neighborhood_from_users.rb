class RemoveNeighborhoodFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :neighborhood, :boolean
  end
end
