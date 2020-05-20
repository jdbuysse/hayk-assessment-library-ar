# Add seed data here. Seed your database with `rake db:seed`

ev = Book.create(title: "Evelina")
Book.create(title: "Moll Flanders")
Book.create(title: "Tom Jones")
doe = Book.create(title: "Dialectic of Enlightenment")

bur = Author.create(first_name: "Fanny", last_name: "Burney")
Author.create(first_name: "Henry", last_name: "Fielding")
Author.create(first_name: "Daniel", last_name: "Dafoe")
ta = Author.create(first_name: "Theodor", last_name: "Adorno")
mh = Author.create(first_name: "Max", last_name: "Horkheimer")

#assign a single author
BookAuthor.create(author_id: bur.id, book_id: ev.id)

#assign multiple to one book
BookAuthor.create(author_id: ta.id, book_id: doe.id)
BookAuthor.create(author_id: mh.id, book_id: doe.id)