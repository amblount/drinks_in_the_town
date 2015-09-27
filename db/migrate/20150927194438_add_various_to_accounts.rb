class AddVariousToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :gender, :string
    add_column :accounts, :occupation, :string
  end
end
