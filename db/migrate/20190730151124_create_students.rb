class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.integer :age
      t.string :school
      t.integer :grade
      t.string :college
      t.string :major
      t.text :bio
      t.string :final_project

      t.timestamps
    end
  end
end
