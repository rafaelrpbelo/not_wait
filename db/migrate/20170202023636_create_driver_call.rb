class CreateDriverCall < ActiveRecord::Migration[5.0]
  def change
    create_table :driver_calls do |t|
      t.references :driver, foreign_key: true
      t.datetime :final_time
      t.boolean :accepted

      t.timestamps
    end
  end
end
