class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.belongs_to :school, index: true, foreign_key: true
      t.string :name, null: false
      t.date :hiredate, null: false
      t.integer :age, null: false

      t.timestamps null: false
    end
  end
end
