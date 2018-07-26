class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email
      t.string :interest

      t.timestamps
    end
  end
end
