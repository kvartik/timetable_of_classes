class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group
      t.references :event, nill: false
      t.timestamps
    end
  end
end
