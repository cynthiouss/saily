class AddDaysToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :days, :integer
  end
end
