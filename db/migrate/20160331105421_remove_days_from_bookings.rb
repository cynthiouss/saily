class RemoveDaysFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :days, :integer
  end
end
