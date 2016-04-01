class AddTourphotoToYachts < ActiveRecord::Migration
  def change
    add_column :yachts, :tourphoto, :string
  end
end
