class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :previous_partners
      t.string :blue
      t.string :gold
      t.string :green
      t.string :orange
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
