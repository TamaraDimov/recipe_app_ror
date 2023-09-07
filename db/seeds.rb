# User.destroy_all

User.create([{ name: "Tamara", email: "tamemojsoska@gmail.com", password: "123456" }]);
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
    quantity: 6,
    },
  {
    name: "Kabsa",
    measurement_unit: "km",
    price: 15.15,
    quantity: 4,
    user_id: 2
    },
    {
      name: "Tost",
      measurement_unit: "km",
      price: 15.15,
      quanity: 4,
      user_id: 2
      },

 ])