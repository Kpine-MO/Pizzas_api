restaurant1 = Restaurant.create(name: "Galitos", address: "Kenyatta Avenue")

restaurant2 = Restaurant.create(name: "KFC", address: "14th Avenue")

restaurant3 = Restaurant.create(name: "McDonald", address: "Nyali Avenue")

restaurant4 = Restaurant.create(name: "Subway", address: "Mombasa Road")

pizza1 = Pizza.create(name: 'Neapolitan Pizza', ingredients: 'Marinara')

pizza2 = Pizza.create(name: 'Chicago Pizza', ingredients: 'Pepperoni')

pizza3 = Pizza.create(name: 'Silician Pizza', ingredients: 'Anchovies')

pizza4 = Pizza.create(name: 'Greek Pizza', ingredients: 'Cheese')

resPiz1 = RestaurantPizza.create(price: 10, pizza_id: pizza1.id, restaurant_id: restaurant4.id)

resPiz2 = RestaurantPizza.create(price: 20, pizza_id: pizza3.id, restaurant_id: restaurant3.id)

resPiz3 = RestaurantPizza.create(price: 10, pizza_id: pizza4.id, restaurant_id: restaurant2.id)

resPiz4 = RestaurantPizza.create(price: 15, pizza_id: pizza2.id, restaurant_id: restaurant1.id)
