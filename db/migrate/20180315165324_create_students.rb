class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :lesson_id
      t.string :teacher_id

      t.timestamps
    end
  end
end
