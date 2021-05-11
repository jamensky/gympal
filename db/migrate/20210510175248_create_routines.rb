class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :instruction
      t.integer :time
      t.integer :set_1
      t.integer :set_2
      t.integer :set_3
      t.timestamps
    end
  end
end
