class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
    #  t.references :course,  index: { unique: true}
    #  r.text :description
      t.timestamps
    end
  end
end
