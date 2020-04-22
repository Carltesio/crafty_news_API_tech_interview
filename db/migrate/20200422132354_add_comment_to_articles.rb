class AddCommentToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :article, foreign_key: true
    add_reference :users, :user
  end
end
