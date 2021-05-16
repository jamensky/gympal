class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :instruction
      t.integer :time
      t.string :set_1
      t.string :set_2
      t.string :set_3
      t.timestamps
    end
  end
end
