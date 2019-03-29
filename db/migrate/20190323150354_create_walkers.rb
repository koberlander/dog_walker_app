class CreateWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :walkers do |t|
      t.string :name
      t.string :bio
      t.integer :years_experience

      t.timestamps
    end
  end
end
