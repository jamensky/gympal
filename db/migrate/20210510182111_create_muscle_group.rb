class CreateMuscleGroup < ActiveRecord::Migration[6.1]
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.string :muscle_1
      t.string :muscle_2
      t.string :muscle_3
      t.timestamps
    end
  end
end
