class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, index: { unique: true}
      t.string :cours, null: false
      t.timestamps
    end
  end
end
