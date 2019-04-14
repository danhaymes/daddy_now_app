class CreateRegProLists < ActiveRecord::Migration[5.2]
  def change
    create_table :reg_pro_lists do |t|
      t.string :link

      t.timestamps
    end
  end
end
