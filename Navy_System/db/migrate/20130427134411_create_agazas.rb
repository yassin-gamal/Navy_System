class CreateAgazas < ActiveRecord::Migration
  def change
    create_table :agazas do |t|
      t.string :type
      t.string :notes

      t.timestamps
    end
  end
end
