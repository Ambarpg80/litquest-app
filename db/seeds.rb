# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start Seeding DB..."
Book.create(title: "Property of the Rebel Librarian", 
    author: "Allison Varnes", 
    publisher: "Penguin Random House", 
    genre: "Fiction", 
    thumbnail_url: "https://images4.penguinrandomhouse.com/cover/9781524771508",
    preview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Book.create(title: "Escape from Mr. Lemoncello's Library", 
    author: "Chris Grabenstein", 
    publisher: "Penguin Random House", 
    genre: "Fiction",
    thumbnail_url: "https://images2.penguinrandomhouse.com/cover/9780307931474",
    preview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Book.create(title: "The First Rule of Punk", 
    author: "Celia C. Pérez", 
    publisher: "Penguin Random House", 
    genre: "Fiction",
    thumbnail_url: "https://images.penguinrandomhouse.com/cover/9780425290422",
    preview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Book.create(title: "The Miraculous Journey of Edward Tulane", 
    author: "Kate DiCamillo", 
    publisher: "Candlewick Press", 
    genre: "Fiction",
    thumbnail_url: "https://www.katedicamillo.com/wp-content/uploads/2021/07/bk_miraculous_260px.jpg",
    preview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Book.create(title: "Diary of an 8-Bit Warrior", 
    author: "Cube Kid", 
    publisher: "Andrews McMeel Publishing", 
    genre: "Fiction",
    thumbnail_url: "https://m.media-amazon.com/images/I/81LCpUQkgeL._SY466_.jpg",
    preview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

rem = Adult.create(name: "Remus Lupin", 
                    age: 52)
        
rem.create_profile!( {child_id: "",
                      adult_id: rem.id,
                      username: "Moony", 
                      email: "moony@example.com",
                      password: "12345", 
                      password_confirmation: "12345" })


theo = Child.create(adult_id: rem.id,
        name: "Theodore Lupin", 
        age: 13)

theo.create_profile!({child_id: theo.id, 
                      adult_id: "",
                      username: "moonpup", 
                      email: "moonpup@example.com",
                      password: "12345", 
                      password_confirmation: "12345" })

jem = Adult.create(name: "Jemma Alonzo", 
                   age: 40)
                   
jem.create_profile!({child_id: "",
                    adult_id: jem.id,
                    username: "mamabear", 
                    email: "mamabear@example.com",
                    password: "12345", 
                    password_confirmation: "12345" })

lui = Child.create(adult_id: jem.id,
                   name: "Luisa Alonzo", 
                   age: 10)

lui.create_profile!({child_id: lui.id,
                    adult_id: "",
                    username: "cubby", 
                    email: "littlebear@example.com",
                    password: "12345", 
                    password_confirmation: "12345" })
           
Review.create(child_id: lui.id, 
      book_id: 1,
      summary: "I liked the book alot.", 
      rating: 4)
puts "Done Seeding!"