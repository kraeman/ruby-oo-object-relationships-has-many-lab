class Author

    attr_accessor :name
    

    def initialize(name)
        @name = name
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def posts
        new_list = Post.all.select {|i| i.author_name == self.name}
        new_list

    end

    def add_post(post)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end