class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    t.string :login, index: { unique: true }, null: false
    t.string :password, null: false


      t.timestamps
    end
  end
end
