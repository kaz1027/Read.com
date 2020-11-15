class ChangeColumnBooks < ActiveRecord::Migration[6.0]
  def up
    remove_column :books, :book_name, :string, null: false
    remove_column :books, :output_tweets, :text
    remove_column :books, :image, :string
    add_column :books, :title, :string, null: false
    add_column :books, :author, :string, nill: false
    add_column :books, :output_tweets1, :text 
    add_column :books, :output_tweets2, :text
    add_column :books, :output_tweets3, :text
    add_column :books, :output_tweets4, :text
    add_column :books, :output_tweets5, :text
    add_column :books, :output_tweets6, :text
    add_column :books, :output_tweets7, :text
    add_column :books, :output_tweets8, :text
    add_column :books, :output_tweets9, :text
    add_column :books, :output_tweets10, :text
    add_column :books, :output_tweets11, :text
    add_column :books, :output_tweets12, :text
    add_column :books, :output_tweets13, :text
    add_column :books, :output_tweets14, :text
    add_column :books, :output_tweets15, :text
    add_column :books, :output_tweets16, :text
    add_column :books, :output_tweets17, :text
    add_column :books, :output_tweets18, :text
    add_column :books, :output_tweets19, :text
    add_column :books, :output_tweets20, :text
  end
end
