class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :student_name
      t.string :student_id
      t.string :student_academy
      t.string :student_major
      t.string :student_degree
      t.integer :student_credit
      t.string :student_course
      t.string :student_password

      t.timestamps null: false
    end
  end
end
