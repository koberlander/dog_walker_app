class RenameBreedToGender < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :breed, :string
    remove_column :dogs, :walk_length, :integer
    remove_column :dogs, :food, :boolean
    remove_column :dogs, :meds, :string
    remove_column :dogs, :walk_frequency, :integer
  end
end
