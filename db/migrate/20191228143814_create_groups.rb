class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group
      t.references :event_id, nill: false
      t.timestamps
    end
  end
end
