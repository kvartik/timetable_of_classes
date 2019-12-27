class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :event_group, null: false
      t.references :calendar, null: false
      t.datetime :event_date
      t.string :event

      t.timestamps
    end
  end
end
