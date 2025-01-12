require "pry"

class Author

    attr_accessor :name
    @@all = []
    @@post_count = 0

    def initialize(name)
        @name = name
        @@all << self 
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self
        @posts << post
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end

   

end