class AddPriceToZipcodes < ActiveRecord::Migration
  def change
    add_column :zipcodes, :price, :integer
  end
end
