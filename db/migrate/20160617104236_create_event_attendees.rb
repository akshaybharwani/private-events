class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.string :event_id
      t.string :attendee_id

      t.timestamps null: false
    end
  end
end
