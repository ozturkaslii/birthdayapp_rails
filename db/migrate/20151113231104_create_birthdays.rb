class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :name
      t.string :surname
      t.datetime :birthday

      t.timestamps null: false
    end
  end
end
