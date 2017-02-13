class AddTimestampsToDriver < ActiveRecord::Migration[5.0]
  def change
    add_timestamps(:drivers)
  end
end
