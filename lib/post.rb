require_relative 'author.rb'

class Post
  attr_accessor :author
  attr_reader :title


  def initialize(title)
    @title = title

  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end

end
