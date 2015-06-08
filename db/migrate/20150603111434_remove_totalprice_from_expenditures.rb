class RemoveTotalpriceFromExpenditures < ActiveRecord::Migration
  def change
    remove_column :expenditures, :totalprice, :string
  end
end
