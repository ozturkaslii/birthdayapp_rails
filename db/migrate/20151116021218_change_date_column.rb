class ChangeDateColumn < ActiveRecord::Migration
  def self.up
    change_column :birthdays, :birthday, :date
  end
 
  def self.down
    change_column :birthdays, :birthday, :datetime
  end
end
