class CreateCallQueue < ActiveRecord::Migration[5.0]
  def change
    create_table :call_queues do |t|
      t.references :driver, foreign: true, null: false
      t.timestamps
    end
  end
end
