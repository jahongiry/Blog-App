class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  def update_post_counter=(number)
    post.update_attribute 'posts_counter', number
  end

  def recent_five_comments
    
    comments.last(5)

  end

end
