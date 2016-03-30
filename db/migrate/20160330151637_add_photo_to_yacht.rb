class AddPhotoToYacht < ActiveRecord::Migration
  def change
    add_column :yachts, :photo, :string
  end
end
