class AddWalkFrequency < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :walk_frequency, :integer
  end
end
