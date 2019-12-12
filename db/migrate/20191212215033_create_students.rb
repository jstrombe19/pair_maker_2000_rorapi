class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :previous_partners
      t.integer :blue
      t.integer :gold
      t.integer :green
      t.integer :orange
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
