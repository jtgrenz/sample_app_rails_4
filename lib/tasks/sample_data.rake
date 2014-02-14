namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
<<<<<<< HEAD

  admin = User.create!(name: "Example User",
   email: "admin@railstutorial.org",
   password: "foobar",
   password_confirmation: "foobar",
   admin: true)

  User.create!(name: "Example User",
   email: "example@railstutorial.org",
   password: "foobar",
   password_confirmation: "foobar")
=======
  admin = User.create!(name:     "Example User",
                       email:    "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
<<<<<<< HEAD
    User.create!(name: name,
     email: email,
     password: password,
     password_confirmation: password)
=======
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
  end
end

def make_microposts
<<<<<<< HEAD

   users = User.all(limit: 6)
   50.times do
=======
  users = User.all(limit: 6)
  50.times do
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

<<<<<<< HEAD

def make_relationships
  users = User.all
  user = users.first
=======
def make_relationships
  users = User.all
  user  = users.first
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end