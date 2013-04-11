class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :note
      t.boolean :open_all

      t.timestamps
    end
  end
end
