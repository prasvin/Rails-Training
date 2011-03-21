class CreateAttendances < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.string :student_name
      t.integer :year
      t.integer :month
      t.integer :day
      t.boolean :present

      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
