class CreateMostkhdmeenUsers < ActiveRecord::Migration
  def change
    create_table :mostkhdmeen_users do |t|
      t.string :name
      t.string :note
      t.string :password
      t.integer :group_id
      t.date :start_date
      t.string :job_type
      t.integer :rank_id
      t.string :status
      t.String :military_number
      t.string :phone
      t.string :near_relative
      t.string :blood
      t.string :address
      t.date :tag_date
      t.date :tas_date
      t.string :type

      t.timestamps
    end
  end
end
