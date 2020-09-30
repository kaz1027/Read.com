class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :book_name, null: false
      t.integer :genre_id, null: false
      t.text :output_tweets
      t.text :derection
      t.string :image
      t.timestamps
    end
  end
end
