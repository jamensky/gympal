class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :name
      t.string :time 
      t.integer :muscle_group_id
      t.integer :routine_id
      t.timestamps
    end
  end
end
