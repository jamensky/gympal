class RoutinesMusclegroups < ActiveRecord::Migration[6.1]
  def change
    create_table :routines_musclegroups do |t|
      t.integer :routine_id
      t.integer :muscle_group_id 
    end
  end
end
