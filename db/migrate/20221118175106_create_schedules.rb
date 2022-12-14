class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :day_of_week
      t.time :booking_time
      t.integer :booking_client
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
