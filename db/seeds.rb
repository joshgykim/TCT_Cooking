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
katharina = User.create({username: "Katharina", email: "katharina@gmail.com", password: "passwordkatharina"})
kate = User.create({username: "Kate", email: "kate@gmail.com", password: "passwordkate"})
brandon = User.create({username: "Brandon", email: "brandon@gmail.com", password: "passwordbrandon"})
lisa = User.create({username: "Lisa", email: "lisa@gmail.com", password: "passwordlisa"})


######################### AUTHOR #########################

dChang = Author.create({
  name: "David Chang",
  bio: "David Chang is an American restaurateur, author, podcaster and television personality. He is the founder of the Momofuku restaurant group, which includes Momofuku Noodle Bar, Momofuku Ssäm Bar, Milk Bar, and Momofuku Ko, and more."
})

mClark = Author.create({
  name: "Melissa Clark",
  bio: "Melissa Clark has been a columnist for the Food section since 2007. She reports on trends, creates recipes and appears in videos linked to her column, A Good Appetite. She’s also written dozens of cookbooks. A native of Brooklyn, she knows where to find the best bagel."
})

aRoman = Author.create({
  name: "Alison Roman",
  bio: "Alison E. Roman is an American food writer, chef and internet personality. She is best known for her viral recipes, such as #TheStew and #TheCookies, which were widely shared on social media platforms."
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

honeyCakeWithPlums = Recipe.create({
  title: "Red Wine Honey Cake With Plums",
  description: "Honey cakes are an inevitable part of the Rosh Hashana meal, but this one, with its deep, spicy flavor and gorgeous hue, will be welcome any time of year.",
  image_url: "https://static01.nyt.com/images/2014/04/15/dining/honeycake/honeycake-mediumThreeByTwo440.jpg",
  preparations: "Place a rack in the middle of the oven; heat to 350 degrees. Generously grease and flour a 10-inch Bundt pan, including center tube.-$%-In a large bowl, whisk together flour, baking powder, baking soda, salt and spices.-$%-In another large bowl, whisk eggs well. Whisk in sugar, oil, 1 cup honey, the wine and the fresh ginger until well combined. Whisk in dry ingredients until smooth.-$%-Pour batter into pan and bake until springy to the touch and a cake tester comes out clean, 45 to 50 minutes. Transfer pan to a wire rack to cool for about 20 minutes, then unmold the cake and let cool completely.-$%-Meanwhile, pit and quarter plums. In a medium bowl, toss plums with remaining 2 tablespoons honey and the thyme. Add more honey to taste and let macerate for at least 30 minutes. Serve cake sliced and garnished with plums and thyme branches.",
  time: "1 1/2 hours, plus cooling",
  yield: "10 to 12 servings",
  author_id: 2
})

labnehChileDip = Recipe.create({
  title: "Labneh Dip With Sizzled Scallions and Chile",
  description: 'In this very high-brow version of ranch dressing, adapted from "Nothing Fancy" by Alison Roman (Clarkson Potter, 2019), scalliony chile oil gets sizzled with cilantro stems (or chives) and swirled into thick, lemony labneh. If you can find green garlic, which tends to be hyperseasonal, use that or even ramps in place of the scallions. Serve with raw vegetables for dipping, as a spread with crackers or flatbread, or alongside roasted lamb or vegetables.',
  image_url: "https://static01.nyt.com/images/2019/10/09/dining/07romanrex1/07romanrex1-articleLarge.jpg",
  preparations: "Heat the olive oil, scallions, red-pepper flakes and cilantro in a small pot over medium-low heat. Cook, swirling occasionally, until the scallions and red-pepper flakes start to visually and audibly sizzle and frizzle and turn the oil a bright, fiery orange. Remove from the heat, and let cool enough to taste without burning your mouth, then season with salt and pepper.-$%-Combine the labneh and lemon juice in a medium bowl, and season with salt and pepper. Spoon into a bowl and swirl in the sizzled scallion mixture. Top with extra cilantro, if you like.",
  time: "15 minutes",
  yield: "2 cups",
  author_id: 3
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


Ingredient.create({name: "Grease or nonstick spray, for the pan", quantity: "", unit: "", recipe_id: 2})
Ingredient.create({name: "all-purpose flour, more for the pan", quantity: "300", unit: "grams", recipe_id: 2})
Ingredient.create({name: "baking powder (2 teaspoons)", quantity: "10", unit: "grams", recipe_id: 2})
Ingredient.create({name: "baking soda (1/2 teaspoon)", quantity: "3", unit: "grams", recipe_id: 2})
Ingredient.create({name: "salt (1/2 teaspoon)", quantity: "3", unit: "grams", recipe_id: 2})
Ingredient.create({name: "cinnamon (1 1/2 teaspoons", quantity: "2", unit: "grams", recipe_id: 2})
Ingredient.create({name: "cardamom (1 teaspoon)", quantity: "2", unit: "grams", recipe_id: 2})
Ingredient.create({name: "ground ginger (1 teaspoon)", quantity: "2", unit: "grams", recipe_id: 2})
Ingredient.create({name: "granulated sugar (1 cup)", quantity: "200", unit: "grams", recipe_id: 2})
Ingredient.create({name: "olive oil", quantity: "1 1/4", unit: "cups", recipe_id: 2})
Ingredient.create({name: "good quality honey, more to taste", quantity: "1", unit: "cup", recipe_id: 2})
Ingredient.create({name: "dry red wine", quantity: "3/4", unit: "cup", recipe_id: 2})
Ingredient.create({name: "grated fresh ginger", quantity: "2", unit: "teaspoons", recipe_id: 2})
Ingredient.create({name: "large eggs", quantity: "3", unit: "", recipe_id: 2})
Ingredient.create({name: "ripe yellow plums", quantity: "1 1/2", unit: "pounds", recipe_id: 2})
Ingredient.create({name: "chopped lemon thyme leaves, or regular thyme leaves, plus branches for garnish", quantity: "1", unit: "tablespoon", recipe_id: 2})


Ingredient.create({name: "olive oil", quantity: "1/3", unit: "cup", recipe_id: 3})
Ingredient.create({name: "scallions (or green garlic), white and light green parts, thinly sliced", quantity: "4", unit: "", recipe_id: 3})
Ingredient.create({name: "red-pepper flakes", quantity: "1", unit: "teaspoon", recipe_id: 3})
Ingredient.create({name: "finely chopped fresh cilantro (leaves and tender stems) or chives, plus more for garnish", quantity: "2", unit: "tablespoons", recipe_id: 3})
Ingredient.create({name: "Flaky sea salt", quantity: "", unit: "", recipe_id: 3})
Ingredient.create({name: "Freshly ground black pepper", quantity: "", unit: "", recipe_id: 3})
Ingredient.create({name: "labneh, full-fat Greek yogurt or sour cream", quantity: "2", unit: "cups", recipe_id: 3})
Ingredient.create({name: "fresh lemon juice", quantity: "2", unit: "tablespoons", recipe_id: 3})


######################### CATEGORIES #########################

Category.create({name: "Dinner"})
Category.create({name: "Asian"})
Category.create({name: "Pork"})
Category.create({name: "Main Course"})
Category.create({name: "Dessert"})
Category.create({name: "Snack"})
Category.create({name: "Appetizer"})
Category.create({name: "Vegetarian"})

######################### CATEGORIZARTIONS #########################

Categorization.create({category_id: 1, recipe_id: 1})
Categorization.create({category_id: 2, recipe_id: 1})
Categorization.create({category_id: 3, recipe_id: 1})
Categorization.create({category_id: 4, recipe_id: 1})
Categorization.create({category_id: 5, recipe_id: 2})
Categorization.create({category_id: 6, recipe_id: 3})
Categorization.create({category_id: 7, recipe_id: 3})
Categorization.create({category_id: 8, recipe_id: 3})

######################### COMMENTS #########################

Comment.create({
  body: "I had to do the oil 3 times before I could use it, because the onions and flakes burned the first two times. In the end, I just infused the oil with the chilli flakes overnight in room temperature and just lightly fried the onions in it the next day. Delicious, though!",
  author_id: 2,
  recipe_id: 3
})

Comment.create({
  body: "I just made this from her new cookbook, where it appears as written here. She should have indicated a range of time for the oil to be on the heat. Like others, mine never did turn color, and the cilantro turned black. I think it will taste good, but the instructions are quite ambiguous.",
  author_id: 3,
  recipe_id: 3
})

Comment.create({
  body: "As others have commented, I too was waiting for the orange oil indicator and ended up burning the scallions and cilantro. This was set on the medium-low heat. Still used it and it was still delicious! Make sure to keep an eye on the oil and if it doesn't turn orange, just don't worry about it and cook until the scallions/cilantro start to lightly brown. It'll still be tasty.",
  author_id: 4,
  recipe_id: 3
})

Comment.create({
  body: "The color of the oil will depend on your pepper flakes (eg how fresh they are). You want to pull it before the onions/cilantro start to brown. Delicious!",
  author_id: 5,
  recipe_id: 3
})