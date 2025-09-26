class CreateReviewers < ActiveRecord::Migration[8.0]
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :username

      t.timestamps
    end
  end
end
