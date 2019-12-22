class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :event_groups,  index: { unique: true}
      r.text :title
      t.data :data, null: false
      t.timestamps
    end
  end
end
