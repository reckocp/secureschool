class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :school, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps null: false
    end
  end
end
