class CreateHomeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :homeworks do |t|
      t.references :event, null: false
      t.text :text

      t.timestamps
    end
  end
end
