namespace :db do
  desc "Fill database with sample data"
   task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    ValueDriver.create!(name: "Asset",
                       text: "this is the description for asset...")
    ValueDriver.create!(name: "Financial",
                       text: "this is the description for financial..")
    ValueDriver.create!(name: "Employee",
                       text: "this is the description for employee...")
  end
end
