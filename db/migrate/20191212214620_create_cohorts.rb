class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.boolean :graduated, default: false

      t.timestamps
    end
  end
end
