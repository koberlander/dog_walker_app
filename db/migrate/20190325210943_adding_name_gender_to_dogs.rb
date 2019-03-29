class AddingNameGenderToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :age, :integer
    add_column :dogs, :gender, :string
    add_column :dogs, :owner_id, :integer
  end
end
