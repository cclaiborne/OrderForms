class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.references :customer
      t.integer :zip
      t.boolean :spot1
      t.boolean :spot2
      t.boolean :spot3
      t.boolean :spot4
      t.boolean :spot5

      t.timestamps
    end
  end
end
