class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :roll_no
      t.string :address
      t.string :phone_no

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
