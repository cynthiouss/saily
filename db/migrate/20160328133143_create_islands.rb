class CreateIslands < ActiveRecord::Migration
  def change
    create_table :islands do |t|
      t.string :name
      t.references :country

      t.timestamps null: false
    end
  end
end
