class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :subject
      t.string :level
      t.string :teacher_id

      t.timestamps
    end
  end
end
