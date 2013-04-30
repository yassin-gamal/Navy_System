class CreateQowaVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.date :from_date
      t.date :to_date
      t.string :note
      t.integer :user_id
      t.integer :vacation_type_id

      t.timestamps
    end
  end
end
