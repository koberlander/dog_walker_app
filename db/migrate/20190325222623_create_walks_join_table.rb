class CreateWalksJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.integer :walker_id
      t.integer :dog_id
      t.integer :walk_length
      t.boolean :walked, default: false
    end
  end
end
