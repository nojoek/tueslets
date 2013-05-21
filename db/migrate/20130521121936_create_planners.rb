class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.integer :zip

      t.timestamps
    end
  end
end
