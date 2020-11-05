class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :author, nill: false
      t.integer :genre_id, null: false
      t.text :output_tweets1
      t.text :output_tweets2
      t.text :output_tweets3
      t.text :output_tweets4
      t.text :output_tweets5
      t.text :output_tweets6
      t.text :output_tweets7
      t.text :output_tweets8
      t.text :output_tweets9
      t.text :output_tweets10
      t.text :output_tweets11
      t.text :output_tweets12
      t.text :output_tweets13
      t.text :output_tweets14
      t.text :output_tweets15
      t.text :output_tweets16
      t.text :output_tweets17
      t.text :output_tweets18
      t.text :output_tweets19
      t.text :output_tweets20
      t.text :derection
      t.timestamps
    end
  end
end
