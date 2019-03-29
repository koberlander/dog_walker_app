class CreateMeds < ActiveRecord::Migration[5.2]
  def change
    create_table :meds do |t|
      t.string :name
      t.integer :dog_id
      t.integer :amount
      t.string :dosing_sched
      t.string :notes
      t.integer :dog_id

      t.timestamps
    end
  end
end
