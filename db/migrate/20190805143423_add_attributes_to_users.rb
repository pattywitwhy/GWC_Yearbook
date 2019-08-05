class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :string
    add_column :users, :age, :integer
    add_column :users, :school, :string
    add_column :users, :grade, :integer
    add_column :users, :college, :string
    add_column :users, :major, :string
    add_column :users, :bio, :text
    add_column :users, :final_project, :string
  end
end
