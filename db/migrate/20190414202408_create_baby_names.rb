class CreateBabyNames < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_names do |t|
      t.string :link

      t.timestamps
    end
  end
end
