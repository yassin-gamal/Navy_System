class AddTypeToRank < ActiveRecord::Migration
  def change
    add_column :type, :rank, :string 
  end
end
