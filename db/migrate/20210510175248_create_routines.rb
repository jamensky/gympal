class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :excercise
      t.string :time
      t.timestamps
    end
  end
end
