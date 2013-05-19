class AddDurationToVacation < ActiveRecord::Migration
  def change
    add_column :vacations,:duration, :integer
  end
end
