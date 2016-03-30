class AddNameToYachts < ActiveRecord::Migration
  def change
    add_column :yachts, :name, :string
  end
end
