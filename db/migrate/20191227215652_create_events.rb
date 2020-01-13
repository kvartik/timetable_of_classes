class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :group_id, null: false
      t.references :calendar_id, null: false
      t.datetime :event_date
      t.string :title

      t.timestamps
    end
  end
end
