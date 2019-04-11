class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :user_name
      t.integer :zipcode
      t.date :due_date
      t.string :reg_pro_list
      t.integer :baby_names_id
      t.integer :calendar_id
      t.string :profile_pic
      t.integer :baby_growth_id

      t.timestamps
    end
  end
end
