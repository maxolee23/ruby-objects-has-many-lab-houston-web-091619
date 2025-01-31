class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    return Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    Post.new(title).author = self
  end

  def self.post_count
    return Post.all.count
  end


end
