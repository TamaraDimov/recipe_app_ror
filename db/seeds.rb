# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.destroy_all
User.create([{ id:2, name: "Tamara", email: "tamemojsoska@gmail.com", password: "123456" }]);
Recipe.create([
  {
    name: "Pizza",
    preparation_time_minutes: "40 mins",
    cooking_time_minutes: "15mins",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
    is_public: true,
    user_id: 2
  },
  {
    name: "Lasagna",
    preparation_time_minutes: "25 mins",
    cooking_time_minutes: "40mins",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
    is_public: true,
    user_id: 2
  }
 ])

 Food.create([
  {
    name: "Pizza",
    measurement_unit: "40 mins",
    price: "15mins",
    quanity: 6,
    user_id: 2
    },
  {
    name: "Kabsa",
    measurement_unit: "km",
    price: 15.15,
    quanity: 4,
    user_id: 2
    },
 ])