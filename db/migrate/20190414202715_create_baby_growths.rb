class CreateBabyGrowths < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_growths do |t|
      t.string :link

      t.timestamps
    end
  end
end
