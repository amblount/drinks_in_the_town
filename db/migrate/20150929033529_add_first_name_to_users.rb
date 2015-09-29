class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :neighborhood, :boolean
    add_column :users, :interviewee, :boolean
    add_column :users, :restaurant, :string
    add_column :users, :drink_type, :string
    add_column :users, :occupation, :string
    add_column :users, :home_owner, :boolean
    add_column :users, :oakland_transplant, :boolean
    add_column :users, :interview_date, :datetime
    add_column :users, :gentrification, :text

  end
end
