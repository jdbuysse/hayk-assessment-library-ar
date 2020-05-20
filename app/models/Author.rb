class Author < ActiveRecord::Base
    has_many :book_authors
    has_many :books, through: :book_authors

    def list_books
        binding.pry
        self.books
    end
end