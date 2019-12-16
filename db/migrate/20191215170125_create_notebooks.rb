class CreateNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks do |t|
      t.references :course, null: false, index: { unique: true}
      t.timestamps
    end
  end
end
