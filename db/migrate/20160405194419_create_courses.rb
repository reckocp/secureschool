class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :school, index: true, foreign_key: true
      t.string :name, null: false
      t.integer :duration, null: false

      t.timestamps null: false
    end
  end
end
