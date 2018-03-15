class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
