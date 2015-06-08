class AddTotalpriceToExpenditures < ActiveRecord::Migration
  def change
    add_column :expenditures, :totalprice, :integer
  end
end
