class Book < ActiveRecord::Base
    has_many :book_authors
    has_many :authors, through: :book_authors

    def list_authors
        #self.authors.map{ |author| "#{author.last_name}, #{author.first_name}"}
        self.authors
    end
end