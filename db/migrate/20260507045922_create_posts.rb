class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :body_part, null: false, foreign_key: true
      t.string :exercise_name
      t.text :content

      t.timestamps
    end
  end
end
