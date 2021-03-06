require_relative 'post.rb'

class Author
  attr_accessor :posts
  attr_reader :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    @posts << Post.new(title)
    @posts.last.author = self
    @@post_count +=1
  end

  def self.post_count
    @@post_count
  end

end
