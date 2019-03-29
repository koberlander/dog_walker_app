class ChangeBioToText < ActiveRecord::Migration[5.2]
  def change
    change_column :walkers, :bio, :text
  end
end
