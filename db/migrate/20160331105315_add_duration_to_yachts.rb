class AddDurationToYachts < ActiveRecord::Migration
  def change
    add_column :yachts, :duration, :integer
  end
end
