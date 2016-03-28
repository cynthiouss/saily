class CreateYachts < ActiveRecord::Migration
  def change
    create_table :yachts do |t|
      t.integer :capacity
      t.integer :cost_per_day
      t.references :country

      t.timestamps null: false
    end
  end
end
