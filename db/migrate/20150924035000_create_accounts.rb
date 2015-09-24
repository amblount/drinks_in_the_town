class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :neighborhood
      t.string :gender
      t.integer :age
      t.string :profession
      t.string :housing_status
      t.boolean :interviewee
      t.boolean :resident

      t.timestamps null: false
    end
  end
end
