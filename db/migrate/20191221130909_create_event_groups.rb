class CreateEventGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :event_groups do |t|
      t.text :group_type, null: false

      t.timestamps
    end
  end
end
