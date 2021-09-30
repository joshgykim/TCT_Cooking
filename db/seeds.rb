# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Author.destroy_all
Ingredient.destroy_all
Category.destroy_all
Comment.destroy_all
Rating.destroy_all

######################### USER #########################

demoUser = User.create({username: "demo_user", email: "demo_user@email.com", password: "password"})


######################### AUTHOR #########################

dChang = Author.create({
  name: "David Chang",
  bio: "David Chang is an American restaurateur, author, podcaster and television personality. He is the founder of the Momofuku restaurant group, which includes Momofuku Noodle Bar, Momofuku Ssäm Bar, Milk Bar, and Momofuku Ko, and more."
})


######################### RECIPE #########################

bossam = Recipe.create({
  title: "Momofuku's Bo Ssam",
  description: "This is a recipe to win the dinner party sweepstakes, and at very low stakes: slow-roasted pork shoulder served with lettuce, rice and a raft of condiments. The chef David Chang serves the dish, known by its Korean name, bo ssam, at his Momofuku restaurant in the East Village and elsewhere. He shared the recipe with The Times in 2012. Mr. Chang is known as a kitchen innovator, but his bo ssam is a remarkably straightforward way to achieve high-level excellence with little more than ingredients and time. Simply cure the pork overnight beneath a shower of salt and some sugar, then roast it in a low oven until it collapses. Apply some brown sugar and a little more salt, then roast the skin a while longer until it takes on the quality of glistening bark. Meanwhile, make condiments – hot sauces and kimchi, rice, some oysters if you wish. Then tear meat off the bone and wrap it in lettuce, and keep at that until everything’s gone.",
  image_url: "https://tastecooking.com/wp-content/uploads/2019/10/Recipe-Bo-Ssam-Momofuku-David-Chang.png",
  preparations: "Place the pork in a large, shallow bowl. Mix the white sugar and 1 cup of the salt together in another bowl, then rub the mixture all over the meat. Cover it with plastic wrap and place in the refrigerator for at least 6 hours, or overnight.-$%-When you're ready to cook, heat oven to 300. Remove pork from refrigerator, brush any excess sugar mixture off the fat cap and discard any juices. Place the pork in a roasting pan and set in the oven and cook for approximately 6 hours, or until it collapses, yielding easily to the tines of a fork. (After the first hour, baste hourly with pan juices.) At this point, you may remove the meat from the oven and allow it to rest for up to an hour.-$%-Meanwhile, make the ginger-scallion sauce. In a large bowl, combine the scallions with the rest of the ingredients. Mix well and taste, adding salt if needed.-$%-Make the ssam sauce. In a medium bowl, combine the chili pastes with the vinegar and oil, and mix well.-$%-Prepare rice, wash lettuce and, if using, shuck the oysters. Put kimchi and sauces into serving bowls.-$%-When your accompaniments are prepared and you are ready to serve the food, turn oven to 500. In a small bowl, stir together the remaining tablespoon of salt with the brown sugar. Rub this mixture all over the cooked pork. Place in oven for approximately 10 to 15 minutes, or until a dark caramel crust has developed on the meat. Serve hot, with the accompaniments.",
  time: "7 hours, plus 6 hours seasoning",
  yield: "6 to 10 servings",
  author_id: 1
})

######################### INGREDIENTS #########################

Ingredient.create({name: "whole bone-in pork butt", quantity: "8-10", unit: "pounds", recipe_id: 1})
Ingredient.create({name: "white sugar", quantity: "1", unit: "cup", recipe_id: 1})
Ingredient.create({name: "kosher salt", quantity: "1", unit: "cup", recipe_id: 1})
Ingredient.create({name: "brown sugar", quantity: "7", unit: "tablespoons", recipe_id: 1})
Ingredient.create({name: "thinly sliced scallions, both green and white parts", quantity: "2 1/2", unit: "cups", recipe_id: 1})
Ingredient.create({name: "peeled, minced fresh ginger", quantity: "1/2", unit: "cup", recipe_id: 1})
Ingredient.create({name: "neutral oil (like grapeseed)", quantity: "3/4", unit: "cup", recipe_id: 1})
Ingredient.create({name: "light soy sauce", quantity: "1 1/2", unit: "teaspoons", recipe_id: 1})
Ingredient.create({name: "sherry vinegar", quantity: "1/2", unit: "cup", recipe_id: 1})
Ingredient.create({name: "kosher salt, or to taste", quantity: "1/2", unit: "teaspoon", recipe_id: 1})
Ingredient.create({name: "fermented bean-and-chili paste (ssamjang)", quantity: "2", unit: "tablespoons", recipe_id: 1})
Ingredient.create({name: "chili paste (kochujang)", quantity: "1", unit: "tablespoon", recipe_id: 1})
Ingredient.create({name: "plain white rice", quantity: "2", unit: "cups", recipe_id: 1})
Ingredient.create({name: "bibb lettuce, leaves separated", quantity: "3", unit: "heads", recipe_id: 1})
Ingredient.create({name: "fresh oysters (optional)", quantity: "1 or more", unit: "dozen", recipe_id: 1})
Ingredient.create({name: "kimchi (available in many Asian markets, and online)", quantity: "", unit: "", recipe_id: 1})

######################### CATEGORIES #########################

Category.create({name: "Dinner"})
Category.create({name: "Asian"})
Category.create({name: "Pork"})
Category.create({name: "Main Course"})

######################### CATEGORIZARTIONS #########################

Categorization.create({category_id: 1, recipe_id: 1})
Categorization.create({category_id: 2, recipe_id: 1})
Categorization.create({category_id: 3, recipe_id: 1})
Categorization.create({category_id: 4, recipe_id: 1})