class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comment
      t.references :movie, null: false, foreign_key: true
      t.references :reviewer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
