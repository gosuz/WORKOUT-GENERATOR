class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.decimal :max
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
