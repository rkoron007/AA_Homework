class AddHouseToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :house_id, :integer
  end
end
