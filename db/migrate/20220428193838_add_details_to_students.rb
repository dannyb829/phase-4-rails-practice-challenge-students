class AddDetailsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :name, :string
    add_column :students, :major, :string
    add_column :students, :age, :integer
  end
end
