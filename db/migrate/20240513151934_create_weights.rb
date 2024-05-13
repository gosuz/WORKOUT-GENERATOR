class CreateWeights < ActiveRecord::Migration[7.1]
  def change
    create_table :weights do |t|
      t.decimal :weight
      t.integer :percentage
      t.integer :set
      t.integer :rep
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
