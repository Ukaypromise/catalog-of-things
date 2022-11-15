class Author
    attr_accessor :first_name, :last_name, :items, :id
    def initialize
        @id = Random.rand(1..1000)
        @first_name = first_name
        @last_name = last_name
        @items = []
    end

    def add_item(item)
        @items.push(item)
    end
end
