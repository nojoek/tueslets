class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :loc1
      t.string :loc2
      t.string :loc3
      t.string :loc4
      t.time :time1
      t.time :time2
      t.time :time3
      t.time :time4
      t.text :description

      t.timestamps
    end
  end
end
