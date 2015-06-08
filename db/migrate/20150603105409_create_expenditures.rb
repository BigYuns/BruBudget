class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.string :name
      t.integer :price
      t.integer :number
      t.string :purpose

      t.timestamps null: false
    end
  end
end
