class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :previous_partners
      t.integer :blue, default: 0
      t.integer :gold, default: 0
      t.integer :green, default: 0
      t.integer :orange, default: 0
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
