class CreateNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks do |t|
      t.references :group, nill: false
      t.text :text

      t.timestamps
    end
  end
end
