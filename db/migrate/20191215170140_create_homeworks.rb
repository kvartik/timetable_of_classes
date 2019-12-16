class CreateHomeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :homeworks do |t|
      t.references :course, null: false, index: { unique: true}
      t.timestamps
    end
  end
end
