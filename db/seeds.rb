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
RecipeBox.destroy_all
 
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

Recipe.create({
title: "Spiced Chickpea Stew With Coconut and Turmeric",
description:
 "Spiced chickpeas are crisped in olive oil, then simmered in a garlicky coconut milk for an insanely creamy, basically-good-for-you stew that evokes stews found in South India and parts of the Caribbean. While the chickpeas alone would be good as a side dish, they are further simmered with stock, bolstered with dark, leafy greens of your choosing and finished with a handful of fresh mint. When shopping, be sure to avoid low-fat coconut milk, coconut milk meant for drinking or cream of coconut: All are very different and would not be suitable here.",
yield: "4 to 6 servings",
time: "55 minutes",
preparations:
 "Heat 1/4 cup oil in a large pot over medium. Add garlic, onion and ginger. Season with salt and pepper, and cook, stirring occasionally until onion is translucent and starts to brown a little at the edges, 3 to 5 minutes.-$%-Add 1 1/2 teaspoons turmeric, 1 teaspoon red-pepper flakes, and the chickpeas, and season with salt and pepper. Cook, stirring frequently, so the chickpeas sizzle and fry a bit in the spices and oil, until they’ve started to break down and get a little browned and crisp, 8 to 10 minutes. Remove about a cup of chickpeas and set aside for garnish.-$%-Using a wooden spoon or spatula, further crush the remaining chickpeas slightly to release their starchy insides. (This will help thicken the stew.) Add coconut milk and stock, and season with salt and pepper.-$%-Bring to a simmer, scraping up any bits that have formed on the bottom of the pot. Cook, stirring occasionally, until stew has thickened, 30 to 35 minutes. (Taste a chickpea or two, not just the liquid, to make sure they have simmered long enough to be as delicious as possible.) If after 30 to 35 minutes, you want the stew a bit thicker, keep simmering until you've reached your desired consistency. Determining perfect stew thickness is a personal journey!-$%-Add greens and stir, making sure they’re submerged in the liquid. Cook until they wilt and soften, 3 to 7 minutes, depending on what you’re using. (Swiss chard and spinach will wilt and soften much faster than kale or collard greens.) Season again with salt and pepper.-$%-Divide among bowls and top with mint, reserved chickpeas, a sprinkle of red-pepper flakes and a good drizzle of olive oil. Serve alongside yogurt and toasted pita if using; dust the yogurt with turmeric if you'd like.",
image_url: "https://static01.nyt.com/images/2018/11/28/dining/28Romanrex1/merlin_143092557_a19cb00a-d1f1-4d42-83be-e4ac865d2f96-articleLarge.jpg",
author_id: 3
})

Recipe.create({
title: "Lemony Turmeric Tea Cake",
description:
 "This cake, which is adapted from “Nothing Fancy: Unfussy Food for Having People Over,” is so good and so simple to put together, you might come to call it “house cake,” which is, of course, cake to keep in your house at all times. Just slicing into it makes a bad day better, the baked equivalent of burning sage or palo santo to clear the energy. It travels well, and can truly be brought anywhere for any occasion, but most of the time it won’t make it out of your kitchen.",
yield: "One 9-inch loaf",
time: "1 1/2 hours",
preparations:
 "Heat the oven to 350 degrees. Lightly grease a 4-by-9-inch loaf pan (see Tip) with nonstick cooking spray or butter, and line it with parchment, leaving some overhang on both of the longer sides so you’re able to easily lift the cake out after baking.-$%-Whisk the flour, baking powder, salt and turmeric in a large bowl.-$%-Grate 2 tablespoons zest from 1 lemon into a medium bowl. Halve the zested lemon and squeeze 2 tablespoons juice into a small bowl. Cut half the remaining whole lemon into thin rounds, discarding seeds (save the other half for another use).-$%-Add 1 cup sugar to the lemon zest in the medium bowl; rub together with your fingertips until the sugar is fragrant and tinted yellow. Whisk in the sour cream, eggs and the 2 tablespoons lemon juice until well blended.-$%-Using a spatula, add the wet mixture to the flour mixture, stirring just to blend. Fold in the melted butter. Scrape the batter into the prepared pan, smoothing the top. Scatter the top with the lemon slices and 2 tablespoons sugar.-$%-Bake until the top of the cake is golden brown, the edges pull away from the sides of the pan, and a tester inserted into the center comes out clean, 50 to 60 minutes. (If the lemons are getting too dark, lay a piece of foil on top to prevent burning.) Let cool before slicing. (Cake can be baked up to 5 days ahead, wrapped tightly, and stored at room temperature.) Serve with whipped cream, if desired.",
image_url: "https://static01.nyt.com/images/2019/11/26/dining/ar-lemony-turmeric-tea-cake/merlin_165035286_7fd1d30a-adce-4f81-b363-9066f36471fe-articleLarge.jpg",
author_id: 3
})

Recipe.create({
  title: "Caramelized Shallot Pasta",
  description:
   "This pasta is all about the shallots, cooked down in a bath of olive oil to a jammy, caramelized paste. Tomato paste is there for tanginess, and anchovies for saltiness, but they serve more as background flavors to the sweetness of the shallot. This recipe makes enough caramelized shallot mixture for a double batch of pasta, or simply keep it refrigerated to spoon over fried eggs, or to serve underneath crispy chicken thighs or over roasted root vegetables like carrots or sweet potatoes.",
  yield: "4 servings",
  time: "40 minutes",
  preparations:
   "Heat olive oil in a large heavy-bottomed Dutch oven over medium high. Add shallots and thinly sliced garlic, and season with salt and pepper. Cook, stirring occasionally, until the shallots have become totally softened and caramelized with golden-brown fried edges, 15 to 20 minutes.-$%-Add red-pepper flakes and anchovies. (No need to chop the anchovies; they will dissolve on their own.) Stir to melt the anchovies into the shallots, about 2 minutes.-$%-Add tomato paste and season with salt and pepper. Cook, stirring constantly to prevent any scorching, until the tomato paste has started to cook in the oil a bit, caramelizing at the edges and going from bright red to a deeper brick red color, about 2 minutes. Remove from heat and transfer about half the mixture to a resealable container, leaving the rest behind. (These are your leftovers to be used elsewhere: in another batch of pasta or smeared onto roasted vegetables, spooned over fried eggs or spread underneath crispy chicken thighs.)-$%-To serve, cook pasta according to package instructions in a large pot of salted boiling water until very al dente (perhaps more al dente than usual). Transfer to Dutch oven with remaining shallot mixture (or a skillet if you are using the leftover portion) and 1 cup pasta water. Cook over medium-high heat, swirling the skillet to coat each piece of pasta, using a wooden spoon or spatula to scrape up any bits on the bottom, until pasta is thick and sauce has reduced and is sticky, but not saucy, 3 to 5 minutes.-$%-In a small bowl, combine parsley and finely chopped garlic clove, and season with flaky salt and pepper. Divide pasta among bowls, or transfer to one large serving bowl, and top with parsley mixture and a bit more red-pepper flakes, if you like.",
  image_url: "https://static01.nyt.com/images/2020/01/29/dining/27Romanrex/merlin_167079174_ecc032e7-071b-44ab-8852-0d5025d0e90d-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Crushed Baby Potatoes With Sardines, Celery and Dill",
  description:
   "Boiled potatoes are great to keep on hand for out-of-hand snacking and as a quick addition to things like a skillet full of chicken fat or a midday lunch salad, but also excellent as a foil for rich, fatty, tinned fish. In this recipe from “Nothing Fancy” (Clarkson Potter, 2019), the potatoes are crushed because it allows the chunkiness (which lends texture) to coexist with the more broken-up pieces (which lends creaminess). Plus, those exposed craggy edges are here for maximum lemony, scalliony, salty dressing absorption.",
  yield: "4 to 6 servings",
  time: "30 minutes",
  preparations:
   "Boil the potatoes in salted water until they’re completely tender, 10 to 15 minutes, depending on size of the potato. Drain and let sit about 10 minutes or so, until they’re cool enough to crush with your hands or another implement.-$%-Meanwhile, combine the olive oil, 1/4 cup dill, 2 tablespoons lemon juice, lemon zest and half the scallions in a small bowl; season with salt and pepper and more lemon juice to taste, as needed.-$%-Scatter the potatoes and celery on a large serving platter or in a bowl and season with salt and pepper. Spoon the olive oil mixture over.-$%-Top with the celery leaves, remaining scallions, more dill and more black pepper. Serve with sardines or anchovies alongside or scattered over the top, if desired.",
  image_url: "https://static01.nyt.com/images/2020/04/15/dining/14Roman2/merlin_171335895_2e44b86e-d105-4869-8a14-7a3fc7008670-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Wine-Braised Chicken With Artichoke Hearts",
  description:
   "Artichokes become weeknight friendly when they come from a can or a jar. Be sure to buy the unmarinated ones here. The gentle braise in rendered chicken fat and tangy white wine, mixed with onions and herbs, provides all the flavor the artichokes need.",
  yield: "4 servings",
  time: "45 minutes",
  preparations:
   "Heat oven to 425 degrees. Season chicken on both sides with salt and pepper.-$%-Heat 1 tablespoon oil in a large skillet over medium-high, and add chicken, skin-side down. Cook, without flipping, until the skin is deeply golden and much of the fat has rendered, 8 to 10 minutes. (You may need to pour off some of the fat.)-$%-Using tongs, flip the chicken skin-side up. Let the undersides cook for another 5 or so minutes. Set chicken aside. Add artichoke hearts and onions to the pan, letting them sizzle until they get a little color, 3 to 4 minutes.-$%-Add wine and thyme, shaking skillet to make sure the wine is evenly distributed and scraping up any golden-brown bits. Add chicken back to the pan, over the artichoke hearts and onions. Bring to a simmer and place in the oven until chicken has finished cooking and sauce is reduced by about half, 10 to 12 minutes.-$%-Remove chicken from oven and scatter with herbs. Finish with more pepper, a drizzle of olive oil, and a sprinkle of sumac, if you have it.",
  image_url: "https://static01.nyt.com/images/2020/02/12/dining/10Romanrex1/merlin_167078514_a6ea3f09-e8a5-42d5-afaf-8b3433175192-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Citrusy Cheesecake",
  description:
   "The nice thing about this cheesecake is that it doesn’t require a water bath or any sort of special baking pan: More shallow than a traditional version, it gets baked right in a pie plate (or tart pan, if you’ve got that). While there are zest and juice inside the cream cheese filling, it’s the fresh sliced citrus on top that makes this cake Creamsicle-like, so don’t skip it. The ultimate do-ahead dessert, this cheesecake can be baked three or so days in advance, just make sure to wrap it tightly as cream cheese tends to easily pick up on that “fridge” scent.",
  yield: "8 to 10 servings",
  time: "45 minutes, plus cooling and chiilling",
  preparations:
   "Make the crust: Heat oven to 325 degrees.-$%-Pulse cookies in a food processor until you’ve got a nice fine crumb (but not a powder). You can also do this by hand if you like, by placing the cookies in a resealable bag and crushing or smashing with a skillet or rolling pin, but you will need a food processor for the filling.-$%-Transfer crumbs to a medium bowl and add brown sugar and butter, followed by a pinch of salt. Using your hands, mix until the crumbs are evenly coated and the mixture has a nice, wet-sand texture. -$%-Press the crust onto the bottom and up the sides of a 9-inch pie plate, tart pan or springform pan. (Alternatively, you could use a cake pan lined with parchment. You can even use an 8-by-8-inch baking dish here, although expect a slightly thicker outcome.) Use the bottom of a measuring cup or small bowl to make sure the crust is really pressed in there, otherwise the cake could be challenging to cut later on. -$%-Bake the crust until it is lightly golden brown at the edges (it gets baked one more time, so best not to overdo it here), 10 to 12 minutes. -$%-Make the filling: Combine cream cheese, sour cream and granulated sugar in the bowl of a food processor and process until the mixture is extremely smooth and well blended, a minute or two, scraping down the sides as needed to incorporate any stubborn chunks of cream cheese. Add eggs, grapefruit juice, zest and a pinch of kosher salt and keep processing until it’s even smoother and creamier than before (a miracle!), another 30 seconds or so. \nPour filling into baked crust (you may have some leftover filling depending on your chosen vessel) and bake until mostly set (a little jiggle is fine), 20 to 30 minutes. The filling should not brown at all.-$%-Turn oven off and open the door a crack. Let the tart sit in the oven for a few minutes before transferring it to a wire rack on the counter to cool completely. Then place the tart in the refrigerator to chill for at least 1 hour. (This is to prevent any unsightly cracks from appearing on the surface, which can happen when there is a sudden or drastic change in temperature.)-$%-To serve, scatter fresh citrus slices on top and sprinkle with a little flaky salt.",
  image_url: "https://static01.nyt.com/images/2019/12/18/dining/17Romanrex4/merlin_162383931_8ab8d59f-884c-4b48-a51a-82884244413e-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Salmon With Whole Lemon Dressing",
  description:
   "Roasting salmon low and slow in one large piece means just cooked, perfectly medium-rare salmon every time. In a pinch, this recipe would work with pre-portioned salmon fillets, but make sure they are at least an inch thick, and decrease the cooking time by about 5 to 8 minutes. The lemon dressing here is tangy, floral and, yes, a little bitter (as the whole lemon is involved, pith and all). If that’s not your preferred flavor profile, feel free to only use the zest and juice.",
  yield: "4 servings",
  time: "30 minutes",
  preparations:
   "Heat oven to 325 degrees. In a small bowl, combine finely chopped lemon, shallot, oregano and vinegar for the dressing. Season with salt and pepper, and add 1/4 cup olive oil. Set aside.-$%-Season salmon on both sides with salt and pepper. Place skin-side down in a 9-by-13-inch baking dish (or other 2-quart equivalent). Spoon half the lemon dressing over the salmon, and place in the oven until salmon is just cooked through but still a nice orange-pink in the thickest parts for more of a medium-rare salmon, 15 to 20 minutes,-$%-depending on the thickness of the fillet.-$%-Meanwhile, scatter lettuces onto a large serving platter. Once salmon is out of the oven, use a spoon or spatula to transfer it to the serving platter with the lettuces, leaving behind the skin. Spoon remaining lemon dressing over the salmon and lettuces. Serve alongside cucumbers or radishes, or both, for crunch.",
  image_url: "https://static01.nyt.com/images/2020/02/26/dining/24Romanrex/merlin_167079003_d91749ac-0392-44a1-8d62-932f67e22ec4-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Crispy Pork Chops With Buttered Radishes",
  description:
   "These crisp, panko-crusted cutlets are your weeknight answer to tonkatsu or Milanese with a simplified, one-step breading procedure, no eggs or flour required. Thin pork chops, either bone-in or boneless, are seasoned with salt and pepper, then simply pressed into panko bread crumbs before crisping up in a hot, oiled skillet. While any quick-cooking vegetable could be tossed in the brown butter and spooned over the chops, radishes are especially nice for the way they keep their bite even after a trip to the skillet. Whatever you do, don’t forget the lemon.\n\n",
  yield: "2 servings",
  time: "20 minutes",
  preparations:
   "Season pork with salt and pepper. Place panko in a rimmed baking sheet or baking dish and season it with salt and pepper. Working one at a time, firmly press both sides of each pork chop into the seasoned panko until the chops are evenly and well coated.-$%-Heat oil in a large skillet (10 to 12 inches) over medium-high heat; it should evenly coat the bottom of the skillet. If it doesn’t, add a bit more oil. Place the pork chops in the skillet and cook until deeply golden brown, like the color of a well-baked croissant, 3 to 4 minutes.-$%-Using tongs or a spatula, flip pork and continue to cook until well browned on the other side, too, another 2 to 3 minutes. Transfer pork to a plate, platter or cutting board lined with paper towel and season with salt.-$%-Wipe out skillet and return to the stove over medium-high heat. Add butter, letting it sizzle, brown and foam. Add capers and half of the radishes, seasoning them with salt and pepper. Toss a few times, just to wilt the radish greens, if they’re still on, and to evenly coat the radishes with the brown butter and capers.-$%-Divide pork chops among plates and nestle butter-tossed radishes and capers alongside, plus remaining raw radishes. Sprinkle with a bit of flaky salt and serve with lemon wedges alongside for squeezing over.",
  image_url: "https://static01.nyt.com/images/2019/02/06/dining/06romanrex1/06romanrex1-articleLarge.jpg",
  author_id: 3
})

Recipe.create({
  title: "Grilled Lamb Chops With Rouille and Cherry Tomatoes",
  description: "The rouille helps the chops char while they absorb all that garlicky-saffron flavor, which is underscored by a dollop of sauce on the side and a garnish of sweet cherry tomatoes.",
  yield: "2 to 3 servings",
  time: "15 minutes",
  preparations:
   "For rouille: Using a mortar and pestle or food processor, pound or pulse saffron until bruised and fragrant. Mix in a half teaspoon of boiling water and let sit for 5 minutes. Add garlic, salt and cayenne and pound or pulse until a paste forms.-$%-Mix in the egg yolk until thoroughly combined. While pounding and stirring constantly (or with food processor on), slowly drizzle in the olive oil. When oil is fully emulsified, stir in tomato paste. Add more salt and cayenne if necessary.-$%-Light grill. Season lamb chops with salt and pepper, and coat with rouille. Allow lamb to rest at room temperature while grill heats up.-$%-Halve cherry tomatoes and sprinkle with salt. Toss with celery leaves or chives and vinegar.-$%-Grill lamb chops to taste, about 2 to 3 minutes a side for medium rare. Brush bread slices with oil and grill until toasted, about 30 seconds a side. Serve lamb with more rouille drizzled on top, and grilled bread and tomatoes on the side.",
  image_url: "https://static01.nyt.com/images/2014/05/30/dining/Grilled-Lamb-Chops-With-Rouille-and-Cherry-Tomatoes/Grilled-Lamb-Chops-With-Rouille-and-Cherry-Tomatoes-articleLarge.jpg",
  author_id: 2
})

Recipe.create({
  title: "Puffy Corn Pancake With Blackberry Sauce",
  description:
   "This pancake is similar to a recipe that ran in The Times in 1966 called David Eyre’s pancake, named for a man whose fame seems to rest mainly on this tasty invention.\n\nHere, in addition to the corn kernels I wanted to use up, I stirred in some cornmeal to highlight the corn factor. Because cornmeal can make things heavy and I feared the pancake might become too dense, I increased the number of eggs in the batter to help it rise and puff.\n\nI mixed in a little black pepper to contrast with the sweetness of the corn, and then simmered together a speedy blackberry syrup to drizzle on top. The recipe is versatile enough to make over and over, and I’m sure it will take me through the end of corn season.",
  yield: "4 servings",
  time: "45 minutes",
  preparations:
   "Heat oven to 425 degrees. Place the butter in the bottom of a 2-quart gratin dish. Place in the oven and cook until butter begins to bubble, 5 to 7 minutes.-$%-Meanwhile, in a large bowl, whisk together flour and cornmeal. In a separate bowl, whisk together eggs and milk. Stir the wet ingredients into the dry. Whisk in honey, salt and pepper. Stir in the corn. Remove dish from the oven and pour in the batter evenly. Return to the oven and bake until the pancake rises and is dark brown around the edges, 20 to 25 minutes. The center of the pancake should also be golden brown.-$%-While the pancake cooks, make the sauce: In a medium saucepan over medium heat, combine blackberries and sugar. Bring to a simmer and cook until berries are soft and syrupy. Remove from heat and serve warm, spooned over pancake in the gratin dish.",
  image_url: "https://static01.nyt.com/images/2012/08/22/dining/22APPE_SPAN/22APPE_SPAN-articleLarge-v2.jpg",
  author_id: 2
})

Recipe.create({
  title: "Tomato Salad on a Roll",
  description:
   "This sandwich, a delight of summer, is a cross between the pan bagnat from Nice and the Catalan tomato bread with anchovy. And it's dead simple. Tomatoes, olive oil, garlic, capers, anchovy and basil. A splash of red wine vinegar. This sandwich comes together quickly, but the ingredients need to stay inside the loaf for at least an hour. That way, the juicy tomatoes and all the tasty aromatics permeate the bread in a soggy, heavenly way. Eat it outside.",
  yield: "4 servings",
  time: "15 minutes",
  preparations:
   "Cut larger tomatoes in thick slices or wedges and smaller ones into halves, and put them in a salad bowl. Season with salt and pepper.-$%-Add the garlic, anchovies (if using), capers, olive oil, vinegar, pepper flakes and half the basil, torn or chopped. Gently toss with the tomatoes and leave for 5 or 10 minutes.-$%-Split the rolls or baguette lengthwise. Spoon tomato salad and its juices onto bottom of each roll (or bottom half of the baguette). Lay a few basil and parsley leaves over tomatoes. Replace tops and press lightly. If using baguette, cut crosswise into 4 pieces.-$%-Cover sandwiches with a clean dish towel and wait for an hour or so before serving.",
  image_url: "https://static01.nyt.com/images/2014/07/28/dining/tomatosandwich-still/tomatosandwich-still-articleLarge.jpg",
  author_id: 2
})

Recipe.create({
  title: "Green Gazpacho",
  description:
   "This Green Gazpacho recipe is from Ottolenghi's book, Plenty. As he states in the book, there are a million recipes for gazpacho, which he says is his favorite cold soup. This one, a green variation is loosely based on tarator, a cold yogurt and cucumber soup from the Balkans. A freestanding blender works best but a stick blender could also be used to bring the ingredients together.\n\nAs you can see from the instructions, this is the easiest of soups to make. There may be many ingredients but they are straightforward and require very little preparation. It is certainly worth the effort. A delicious soup and perfect on a hot summer's day.​​",
  yield: "6 to 8 servings",
  time: "20 minutes",
  preparations:
   "The day before serving, combine tomatoes, lemon grass and vodka in a blender and puree until smooth. Line a sieve with cheesecloth or paper towels, set over a bowl and pour in tomato mixture. Refrigerate overnight; clear liquid will slowly drain through. Discard solids.-$%-In a glass or ceramic bowl, combine cucumbers, green peppers, tomatillos, vinegars, lemon juice, sugar and a generous sprinkling of salt and pepper. Refrigerate overnight.-$%-In a large bowl, blend marinated vegetables, avocado, chives, cilantro, parsley, scallions and tomato liquid until smooth. Taste for salt, pepper and vinegar, adding more as needed. Serve very cold.",
  image_url: "https://static01.nyt.com/images/2014/03/28/dining/gazpacho-still/gazpacho-still-articleLarge.jpg",
  author_id: 1
})

Recipe.create({
  title: "Salty-Sweet Salmon With Ginger and Spicy Cucumber Salad",
  description:
   "This 2006 recipe came to The Times by way of David Myers, the American chef and restaurateur, when Amanda Hesser called upon him to re-interpret this 1961 Times recipe for Chinese barbecued spareribs. He kept the simple soy-garlic-ketchup (yes, ketchup) marinade intact and applied it to salmon. He then served it with a preserved ginger relish and a cucumber salad seasoned with shichimi togarashi, a fiery Japanese spice blend (red pepper flakes make a fine substitute). If you don't have the time to make the relish and cucumber salad, serve the salmon with a few slivers of preserved ginger from a jar, a pile of white rice and some sautéed greens. That's better than your standard grilled salmon by a mile.",
  yield: "4 servings",
  time: "3 hours 30 minutes",
  preparations:
   "Make the preserved ginger: The day before, whisk together the fish sauce, rice-wine vinegar and sugar, then add the ginger. Make sure it is covered by the liquid.-$%-Combine the honey, soy sauce, garlic, ketchup and 1/4 cup water. Marinate the salmon in this for 2 hours, turning after 1 hour.-$%-Meanwhile, prepare the cucumber salad: Bring the vinegar to a boil. Add the sugar, salt, togarashi and ginger. Return to a boil, then let cool to room temperature. Put the cucumbers in a nonreactive container and cover with the vinegar mixture. Let sit at least one hour before serving.-$%-Preheat grill to low. Arrange salmon on a hinged grill basket, then cook, basting occasionally with the marinade, over a low flame for 5 minutes per side, or until just flaky. (Or broil, skin side down, 6 inches from the flame for 4 minutes, baste, then turn and broil for 2 minutes.) To serve, use a slotted spoon to place the cucumber salad on each of 4 plates. Lay the salmon next to the salad and serve topped with preserved ginger.",
  image_url: "https://static01.nyt.com/images/2018/02/07/dining/07COOKING-SALMON-GINGER/07COOKING-SALMON-GINGER-articleLarge-v2.jpg",
  author_id: 1
})

Recipe.create({
  title: "Melon With Red Chili Flakes, Salt and Lime",
  description:
   "Skewered melon with chili, salt and lime juice, served as a snack or part of a larger meal, is as unexpected as it is compulsively edible. It's also easily assembled and takes no time, and rewards with layers of flavor.",
  yield: "4 servings",
  time: "10 minutes",
  preparations:
   "Cut the melon into 1-inch cubes.Skewer the melon pieces (about four pieces for each skewer), and place them on a serving plate.-$%-Place the salt and red chili flakes in a coffee or spice grinder and pulse until finely ground. Sprinkle about a teaspoon of the salt/chili mixture over the melons, followed by the diced jalapeño.-$%-Squeeze the lime over the melons, and serve.",
  image_url: "https://static01.nyt.com/images/2014/04/03/dining/spicymelon-still/spicymelon-still-articleLarge.jpg",
  author_id: 1
})

Recipe.create({
  title: "Sweet-Corn Salad",
  description:
   "Here's a recipe for sweet-corn salad designed to preserve the dignity of the solitary diner. The salad itself requires minimal cooking, which means the small amount of time you spend on it can all be attentive and quite personal. It amounts to simple cutting of kernels from the last of the season's corn cobs, and warming them in good olive oil with garlic, some scallions and a bit of chopped fresh vegetables, then finishing it all with chopped herbs. If corn season has ended, tender butter beans from a can, drained and rinsed, make a perfect substitute. Served with a wedge of good cheese and a thick cut of bread, the salad becomes part of a simple but complete meal, to be eaten in your own good company.",
  yield: "3 servings",
  time: "20 minutes",
  preparations:
   "Scrape the kernels from each cob by holding it vertically in a large bowl, fat end up, and cutting kernels off, into the bowl, with a sharp knife. Freeze the empty cobs for soup stock.-$%-Heat a large, flat sauté pan. When it’s warm, add a good amount of olive oil. Turn the heat down to medium-high, and add the garlic and onion.-$%-Sprinkle them lightly with kosher salt. Stir periodically for a few minutes, until the onions and garlic have begun to become translucent, then add the tomatoes or cucumbers (or combination). Let sizzle for two minutes, then add the corn and a sprinkle of water.-$%-Raise the heat, stir once or twice, taste for salt and adjust, then add a few drops of vinegar. Mix through. Turn off heat, add herbs, stir.",
  image_url: "https://static01.nyt.com/images/2014/10/05/magazine/05eat/mag-05eat-t_CA0-articleLarge.jpg",
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


Ingredient.create({name: "olive oil, plus more for serving", quantity: "1/4", unit: "cup", recipe_id: 4})
Ingredient.create({name: "garlic cloves, chopped", quantity: "4", unit: "", recipe_id: 4})
Ingredient.create({name: "large yellow onion, chopped", quantity: "1", unit: "", recipe_id: 4})
Ingredient.create({name: "(2-inch) piece ginger, finely chopped", quantity: "1", unit: "", recipe_id: 4})
Ingredient.create({name: "Kosher salt and black pepper", quantity: "", unit: "", recipe_id: 4})
Ingredient.create({name: "ground turmeric, plus more for serving", quantity: "1 1/2",unit: "teaspoons",recipe_id: 4})
Ingredient.create({name: "red-pepper flakes, plus more for serving",quantity: "1",unit: "teaspoon",recipe_id: 4})
Ingredient.create({name: "chickpeas, drained and rinsed", quantity: "2", unit: "cans", recipe_id: 4})
Ingredient.create({name: "full-fat coconut milk", quantity: "2", unit: "cans", recipe_id: 4})
Ingredient.create({name: "vegetable or chicken stock", quantity: "2", unit: "cups", recipe_id: 4})
Ingredient.create({name: "Swiss chard, kale or collard greens, stems removed, torn into bite-size pieces",quantity: "1",unit: "bunch",recipe_id: 4})
Ingredient.create({name: "mint leaves, for serving", quantity: "1", unit: "cup", recipe_id: 4})
Ingredient.create({name: "Yogurt, for serving (optional)", quantity: "", unit: "", recipe_id: 4})
Ingredient.create({name: "Toasted pita, lavash or other flatbread, for serving (optional)",quantity: "",unit: "",recipe_id: 4})


Ingredient.create({name: "Nonstick cooking spray or butter, for greasing the pan",quantity: "",unit: "",recipe_id: 5})
Ingredient.create({name: "all-purpose flour", quantity: "1 1/2", unit: "cups", recipe_id: 5})
Ingredient.create({name: "baking powder", quantity: "2", unit: "teaspoons", recipe_id: 5})
Ingredient.create({name: "kosher salt", quantity: "1", unit: "teaspoon", recipe_id: 5})
Ingredient.create({name: "ground turmeric", quantity: "3/4", unit: "teaspoon", recipe_id: 5})
Ingredient.create({name: "lemons", quantity: "2", unit: "", recipe_id: 5})
Ingredient.create({name: "granulated sugar, plus 2 tablespoons for sprinkling",quantity: "1",unit: "cup",recipe_id: 5})
Ingredient.create({name: "sour cream or full-fat Greek yogurt, plus more for serving (optional)",quantity: "3/4",unit: "cup",recipe_id: 5})
Ingredient.create({name: "large eggs", quantity: "2", unit: "", recipe_id: 5})
Ingredient.create({name: "unsalted butter (1 stick), melted",quantity: "1/2",unit: "cup",recipe_id: 5})
Ingredient.create({name: "Whipped cream (optional)", quantity: "", unit: "", recipe_id: 5})

Ingredient.create({name: "olive oil", quantity: "1/4", unit: "cup", recipe_id: 6})
Ingredient.create({name: "large shallots, very thinly sliced", quantity: "6", unit: "", recipe_id: 6})
Ingredient.create({name: "garlic cloves, 4 thinly sliced, 1 finely chopped",quantity: "5",unit: "",recipe_id: 6})
Ingredient.create({name: "Kosher salt and freshly ground black pepper",quantity: "",unit: "",recipe_id: 6})
Ingredient.create({name: "red-pepper flakes, plus more to taste",quantity: "1",unit: "teaspoon",recipe_id: 6})
Ingredient.create({name: "anchovy fillets (about 12), drained",quantity: "1",unit: "can",recipe_id: 6})
Ingredient.create({name: "of tomato paste (about 1/2 to 3/4 cup)",quantity: "1",unit: "tube",recipe_id: 6})
Ingredient.create({name: "pasta", quantity: "10", unit: "ounces", recipe_id: 6})
Ingredient.create({name: "parsley, leaves and tender stems, finely chopped",quantity: "1",unit: "cup",recipe_id: 6})
Ingredient.create({name: "Flaky sea salt", quantity: "", unit: "", recipe_id: 6})

Ingredient.create({name: "potatoes, preferably small, waxy potatoes, such as golden creamer or fingerling",quantity: "1",unit: "pound",recipe_id: 7})
Ingredient.create({name: "Kosher salt", quantity: "", unit: "", recipe_id: 7})
Ingredient.create({name: "olive oil", quantity: "1/3", unit: "cup", recipe_id: 7})
Ingredient.create({name: "chopped fresh dill or parsley, plus more for garnish",quantity: "1/4",unit: "cup",recipe_id: 7})
Ingredient.create({name: " fresh lemon juice or white wine vinegar, plus more to taste",quantity: "2",unit: "tablespoons",recipe_id: 7})
Ingredient.create({name: "finely grated lemon zest", quantity: "1", unit: "tablespoon", recipe_id: 7})
Ingredient.create({name: "scallions or spring onions, white and green parts, or 1 bunch chives, thinly sliced",quantity: "4",unit: "",recipe_id: 7})
Ingredient.create({name: "Freshly ground black pepper", quantity: "", unit: "", recipe_id: 7})
Ingredient.create({name: "celery stalks, thinly sliced on a bias",quantity: "4",unit: "",recipe_id: 7})
Ingredient.create({name: "celery leaves or tender leaves and stems of fresh parsley",quantity: "1",unit: "cup",recipe_id: 7})
Ingredient.create({name: "sardines, (2-ounce) tin anchovy fillets or other fish, torn or cut into bite-size pieces",quantity: "1",unit: "tin",recipe_id: 7})

Ingredient.create({name: "bone-in, skin-on chicken thighs, or a mix of legs and thighs (1 1/2 to 2 pounds)",quantity: "4",unit: "",recipe_id: 8})
Ingredient.create({name: "Kosher salt and black pepper", quantity: "", unit: "", recipe_id: 8})
Ingredient.create({name: "olive oil, plus more for drizzling",quantity: "1",unit: "tablespoon",recipe_id: 8})
Ingredient.create({name: "artichoke hearts, drained and halved lengthwise",quantity: "2",unit: "cans",recipe_id: 8})
Ingredient.create({name: "medium red onion, sliced", quantity: "1", unit: "", recipe_id: 8})
Ingredient.create({name: "dry white wine", quantity: "1 1/4", unit: "cup", recipe_id: 8})
Ingredient.create({name: "A few sprigs of thyme, oregano or marjoram",quantity: "",unit: "",recipe_id: 8})
Ingredient.create({name: "mint, parsley or dill leaves", quantity: "1", unit: "cup", recipe_id: 8})
Ingredient.create({name: "Sumac, for serving (optional)", quantity: "", unit: "", recipe_id: 8})

Ingredient.create({name: "vanilla wafers or graham crackers ",quantity: "8 ",unit: "ounces",recipe_id: 9})
Ingredient.create({name: "light brown sugar", quantity: "3", unit: "tablespoons", recipe_id: 9})
Ingredient.create({name: "unsalted butter, melted", quantity: "6", unit: "tablespoons", recipe_id: 9})
Ingredient.create({name: "Pinch of kosher salt ", quantity: "", unit: "", recipe_id: 9})
Ingredient.create({name: "(two 8-ounce/225-gram packages) cream cheese, not the whipped kind, preferably at room temperature ",quantity: "1",unit: "pound",recipe_id: 9})
Ingredient.create({name: "sour cream or full-fat Greek yogurt",quantity: "1",unit: "cup",recipe_id: 9})
Ingredient.create({name: "granulated sugar", quantity: "1/2", unit: "cup", recipe_id: 9})
Ingredient.create({name: "2", quantity: "large eggs", unit: "", recipe_id: 9})
Ingredient.create({name: "fresh grapefruit, lemon, lime or orange juice",quantity: "3",unit: "tablespoons",recipe_id: 9})
Ingredient.create({name: "finely grated grapefruit, lemon, lime or orange zest",quantity: "3",unit: "tablespoons",recipe_id: 9})
Ingredient.create({name: "Pinch of kosher salt ", quantity: "", unit: "", recipe_id: 9})
Ingredient.create({name: " Sliced citrus, for serving ", quantity: "", unit: "", recipe_id: 9})
Ingredient.create({name: " Flaky sea salt, for serving", quantity: "", unit: "", recipe_id: 9})

Ingredient.create({name: "lemons, seeds removed, peel, pith and fruit finely chopped",quantity: "2",unit: "",recipe_id: 10})
Ingredient.create({name: "small shallot or garlic clove, finely chopped",quantity: "1",unit: "",recipe_id: 10})
Ingredient.create({name: "oregano, marjoram or thyme sprigs, leaves stripped and chopped",quantity: "3",unit: "",recipe_id: 10})
Ingredient.create({name: "white wine vinegar", quantity: "2", unit: "tablespoons", recipe_id: 10,})
Ingredient.create({name: "Kosher salt and freshly ground black pepper",quantity: "",unit: "",recipe_id: 10})
Ingredient.create({name: "olive oil, plus more for drizzling",quantity: "1/4",unit: "cup",recipe_id: 10})
Ingredient.create({name: "skin-on salmon fillet (skinless is fine in a pinch)",quantity: "1 1/2",unit: "pounds",recipe_id: 10})
Ingredient.create({name: "butter or Little Gem lettuce, torn into large pieces",quantity: "1",unit: "head",recipe_id: 10})
Ingredient.create({name: "Persian cucumbers or radishes, or both, sliced, for serving",quantity: "2",unit: "",recipe_id: 10})

Ingredient.create({name: "bone-in or boneless pork chops (rib or loin), cut 1/2-inch thick (about 6 ounces each)", quantity: "2", unit: "", recipe_id: 11})
Ingredient.create({name: " Kosher salt and black pepper", quantity: "", unit: "", recipe_id: 11})
Ingredient.create({name: "panko or fresh coarse bread crumbs", quantity: "1 1/2", unit: "cups", recipe_id: 11})
Ingredient.create({name: "canola oil, plus more as needed", quantity: "3", unit: "tablespoons", recipe_id: 11})
Ingredient.create({name: "unsalted butter", quantity: "4", unit: "tablespoons", recipe_id: 11})
Ingredient.create({name: "capers", quantity: "2", unit: "tablespoons", recipe_id: 11})
Ingredient.create({name: "radishes, with tops on if you like, cut into quarters", quantity: "1 ", unit: "bunch", recipe_id: 11})
Ingredient.create({name: "Flaky sea salt", quantity: "", unit: "", recipe_id: 11})
Ingredient.create({name: "lemon, cut into wedges", quantity: "1", unit: "", recipe_id: 11})

Ingredient.create({name: "Large pinch saffron", quantity: "", unit: "", recipe_id: 12})
Ingredient.create({name: "garlic cloves, minced", quantity: "2", unit: "", recipe_id: 12})
Ingredient.create({name: "kosher salt, more to taste", quantity: "2", unit: "teaspoon", recipe_id: 12})
Ingredient.create({name: "Large pinch cayenne pepper, or to taste", quantity: "", unit: "", recipe_id: 12})
Ingredient.create({name: "large egg yolk", quantity: "1", unit: "", recipe_id: 12})
Ingredient.create({name: "extra virgin olive oil, more for serving", quantity: "1/2", unit: "cup", recipe_id: 12})
Ingredient.create({name: "tomato paste", quantity: "1", unit: "teaspoon", recipe_id: 12})
Ingredient.create({name: "lamb loin chops, 2 inches thick (4 to 6 ounces each)", quantity: "6", unit: "", recipe_id: 12})
Ingredient.create({name: "Freshly ground black pepper", quantity: "", unit: "", recipe_id: 12})
Ingredient.create({name: "cherry tomatoes", quantity: "1", unit: "pint", recipe_id: 12})
Ingredient.create({name: "chopped fresh celery leaves or chives", quantity: "1", unit: "tablespoon", recipe_id: 12})
Ingredient.create({name: "sherry or red wine vinegar", quantity: "1", unit: "teaspoon", recipe_id: 12})
Ingredient.create({name: "Thick slices of crusty bread, for serving", quantity: "", unit: "", recipe_id: 12})

Ingredient.create({name: "unsalted butter", quantity: "4", unit: "tablespoons", recipe_id: 13})
Ingredient.create({name: "all-purpose flour", quantity: "1/2", unit: "cups", recipe_id: 13})
Ingredient.create({name: "fine cornmeal", quantity: "1/4", unit: "cup", recipe_id: 13})
Ingredient.create({name: "large eggs", quantity: "5", unit: "", recipe_id: 13})
Ingredient.create({name: "whole milk", quantity: "1/3", unit: "cup", recipe_id: 13})
Ingredient.create({name: "honey", quantity: "2", unit: "tablespoons", recipe_id: 13})
Ingredient.create({name: "fine sea salt", quantity: "1/4", unit: "teaspoon", recipe_id: 13})
Ingredient.create({name: "black pepper", quantity: "1/2", unit: "teaspoon", recipe_id: 13})
Ingredient.create({name: "fresh corn kernels", quantity: "3/4", unit: "cup", recipe_id: 13})
Ingredient.create({name: "fresh blackberries", quantity: "2", unit: "cups", recipe_id: 13})
Ingredient.create({name: "sugar", quantity: "3", unit: "tablespoons", recipe_id: 13})

Ingredient.create({name: "fresh French rolls or a long baguette", quantity: "4", unit: "", recipe_id: 14})
Ingredient.create({name: "ripe tomatoes, in assorted colors and sizes", quantity: "1", unit: "pound", recipe_id: 14})
Ingredient.create({name: "Salt", quantity: "", unit: "", recipe_id: 14})
Ingredient.create({name: "Pepper", quantity: "", unit: "", recipe_id: 14})
Ingredient.create({name: "garlic cloves, finely minced", quantity: "2", unit: "", recipe_id: 14})
Ingredient.create({name: "anchovy fillets, rinsed and roughly chopped, optional", quantity: "2", unit: "", recipe_id: 14})
Ingredient.create({name: "capers, rinsed", quantity: "2", unit: "teaspoons", recipe_id: 14})
Ingredient.create({name: "extra virgin olive oil", quantity: "3", unit: "tablespoons", recipe_id: 14})
Ingredient.create({name: "red wine vinegar", quantity: "2", unit: "teaspoons", recipe_id: 14})
Ingredient.create({name: "Pinch red pepper flakes", quantity: "", unit: "", recipe_id: 14})
Ingredient.create({name: "basil leaves", quantity: "12", unit: "", recipe_id: 14})
Ingredient.create({name: "A few tender parsley leaves", quantity: "", unit: "", recipe_id: 14})

Ingredient.create({name: "ripe plum or grape tomatoes, coarsely chopped", quantity: "2 1/2", unit: "pounds", recipe_id: 15})
Ingredient.create({name: "lemon grass, peeled and coarsely chopped", quantity: "1", unit: "stalk", recipe_id: 15})
Ingredient.create({name: "vodka", quantity: "1/2", unit: "cup", recipe_id: 15})
Ingredient.create({name: "cucumbers, peeled and chopped", quantity: "2", unit: "", recipe_id: 15})
Ingredient.create({name: "green bell peppers, seeded, cored and chopped", quantity: "2", unit: "", recipe_id: 15})
Ingredient.create({name: "tomatillos, chopped", quantity: "2", unit: "", recipe_id: 15})
Ingredient.create({name: "white wine vinegar", quantity: "2", unit: "tablespoons", recipe_id: 15})
Ingredient.create({name: "sherry vinegar", quantity: "1", unit: "tablespoon", recipe_id: 15})
Ingredient.create({name: "lemon juice", quantity: "1", unit: "tablespoon", recipe_id: 15})
Ingredient.create({name: "sugar", quantity: "1", unit: "tablespoon", recipe_id: 15})
Ingredient.create({name: "Salt and Pepper", quantity: "", unit: "", recipe_id: 15})
Ingredient.create({name: "avocado", quantity: "1/2", unit: "", recipe_id: 15})
Ingredient.create({name: "small handful chives", quantity: "1", unit: "", recipe_id: 15})
Ingredient.create({name: "small handful cilantro", quantity: "1", unit: "", recipe_id: 15})
Ingredient.create({name: "small handful parsley", quantity: "1", unit: "", recipe_id: 15})
Ingredient.create({name: "scallions, trimmed", quantity: "1", unit: "bunch", recipe_id: 15})

Ingredient.create({name: "fish sauce", quantity: "1/3", unit: "cup", recipe_id: 16})
Ingredient.create({name: "rice wine vinegar", quantity: "1 1/2", unit: "teaspoons", recipe_id: 16})
Ingredient.create({name: "sugar, or to taste", quantity: "3/4", unit: "teaspoon", recipe_id: 16})
Ingredient.create({name: "finely grated ginger", quantity: "1/4", unit: "cup", recipe_id: 16})
Ingredient.create({name: "honey", quantity: "1/3", unit: "cup", recipe_id: 16})
Ingredient.create({name: "soy sauce", quantity: "1/4", unit: "cup", recipe_id: 16})
Ingredient.create({name: "garlic, crushed", quantity: "1", unit: "clove", recipe_id: 16})
Ingredient.create({name: "ketchup", quantity: "1 1/2", unit: "tablespoons", recipe_id: 16})
Ingredient.create({name: "salmon filet", quantity: "4", unit: "", recipe_id: 16})
Ingredient.create({name: "rice-wine vinegar", quantity: "1", unit: "cup", recipe_id: 16})
Ingredient.create({name: "sugar", quantity: "1/3", unit: "cup", recipe_id: 16})
Ingredient.create({name: "togarashi (or ground red pepper flakes)", quantity: "1/2", unit: "teaspoons", recipe_id: 16})
Ingredient.create({name: "grated ginger", quantity: "1 1/2", unit: "teaspoons", recipe_id: 16})
Ingredient.create({name: "English cucumber, seeded and sliced into 1/8 inch thick", quantity: "1", unit: "", recipe_id: 16})

Ingredient.create({name: "muskmelon (honeydew or cantaloupe), rind and seeds removed", quantity: "1", unit: "", recipe_id: 17})
Ingredient.create({name: "six-inch skewers", quantity: "6", unit: "", recipe_id: 17})
Ingredient.create({name: "kosher salt", quantity: "1", unit: "tablespoon", recipe_id: 17})
Ingredient.create({name: "red pepper flakes", quantity: "1", unit: "tablespoon", recipe_id: 17})
Ingredient.create({name: "jalapeno, finely diced (seeds removed)", quantity: "1", unit: "", recipe_id: 17})
Ingredient.create({name: "lime", quantity: "1/2", unit: "", recipe_id: 17})

Ingredient.create({name: "fresh sweet corn, shucked", quantity: "3", unit: "ears", recipe_id: 18})
Ingredient.create({name: "Olive oil", quantity: "", unit: "", recipe_id: 18})
Ingredient.create({name: "garlic, thinly sliced", quantity: "1-2", unit: "cloves", recipe_id: 18})
Ingredient.create({name: "spring onion or 3 scallions, thinly sliced", quantity: "1/2", unit: "", recipe_id: 18})
Ingredient.create({name: "Salt", quantity: "", unit: "", recipe_id: 18})
Ingredient.create({name: "small handful cherry tomatoes, halved; or half a cucumber, quartered vertically, then chopped thinly across, or both", quantity: "1", unit: "", recipe_id: 18})
Ingredient.create({name: "Sprinkle of water", quantity: "", unit: "", recipe_id: 18})
Ingredient.create({name: "A few drops red- or white-wine vinegar", quantity: "", unit: "", recipe_id: 18})
Ingredient.create({name: "small handful fresh basil leaves, torn", quantity: "1", unit: "", recipe_id: 18})
Ingredient.create({name: "very small handful fresh marjoram leaves, chopped", quantity: "1", unit: "", recipe_id: 18})

######################### CATEGORIES #########################

Category.create({name: "Dinner"})
Category.create({name: "Asian"})
Category.create({name: "Pork"})
Category.create({name: "Main Course"})
Category.create({name: "Dessert"})
Category.create({name: "Snack"})
Category.create({name: "Appetizer"})
Category.create({name: "Vegetarian"})
Category.create({name: "Pasta"})
Category.create({name: "Chicken"})
Category.create({name: "Fish"})

######################### CATEGORIZARTIONS #########################

Categorization.create({category_id: 1, recipe_id: 1})
Categorization.create({category_id: 2, recipe_id: 1})
Categorization.create({category_id: 3, recipe_id: 1})
Categorization.create({category_id: 4, recipe_id: 1})
Categorization.create({category_id: 5, recipe_id: 2})
Categorization.create({category_id: 6, recipe_id: 2})
Categorization.create({category_id: 6, recipe_id: 3})
Categorization.create({category_id: 7, recipe_id: 3})
Categorization.create({category_id: 8, recipe_id: 3})
Categorization.create({category_id: 1, recipe_id: 4})
Categorization.create({category_id: 4, recipe_id: 4})
Categorization.create({category_id: 8, recipe_id: 4})
Categorization.create({category_id: 5, recipe_id: 5})
Categorization.create({category_id: 6, recipe_id: 5})
Categorization.create({category_id: 1, recipe_id: 6})
Categorization.create({category_id: 4, recipe_id: 6})
Categorization.create({category_id: 9, recipe_id: 6})
Categorization.create({category_id: 1, recipe_id: 7})
Categorization.create({category_id: 4, recipe_id: 7})
Categorization.create({category_id: 7, recipe_id: 7})
Categorization.create({category_id: 8, recipe_id: 7})
Categorization.create({category_id: 1, recipe_id: 8})
Categorization.create({category_id: 4, recipe_id: 8})
Categorization.create({category_id: 10, recipe_id: 8})
Categorization.create({category_id: 5, recipe_id: 9})
Categorization.create({category_id: 8, recipe_id: 9})
Categorization.create({category_id: 1, recipe_id: 10})
Categorization.create({category_id: 4, recipe_id: 10})
Categorization.create({category_id: 11, recipe_id: 10})
Categorization.create({category_id: 1, recipe_id: 11})
Categorization.create({category_id: 3, recipe_id: 11})
Categorization.create({category_id: 4, recipe_id: 11})
Categorization.create({category_id: 1, recipe_id: 12})
Categorization.create({category_id: 4, recipe_id: 12})
Categorization.create({category_id: 5, recipe_id: 13})
Categorization.create({category_id: 6, recipe_id: 13})
Categorization.create({category_id: 1, recipe_id: 14})
Categorization.create({category_id: 7, recipe_id: 14})
Categorization.create({category_id: 8, recipe_id: 14})
Categorization.create({category_id: 8, recipe_id: 15})
Categorization.create({category_id: 7, recipe_id: 15})
Categorization.create({category_id: 2, recipe_id: 16})
Categorization.create({category_id: 1, recipe_id: 16})
Categorization.create({category_id: 4, recipe_id: 16})
Categorization.create({category_id: 11, recipe_id: 16})
Categorization.create({category_id: 1, recipe_id: 17})
Categorization.create({category_id: 5, recipe_id: 17})
Categorization.create({category_id: 6, recipe_id: 17})
Categorization.create({category_id: 7, recipe_id: 17})
Categorization.create({category_id: 8, recipe_id: 17})
Categorization.create({category_id: 1, recipe_id: 18})
Categorization.create({category_id: 4, recipe_id: 18})
Categorization.create({category_id: 7, recipe_id: 18})
Categorization.create({category_id: 8, recipe_id: 18})

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

######################### RECIPE BOX #########################

RecipeBox.create({user_id: 1, recipe_id: 10})
RecipeBox.create({user_id: 1, recipe_id: 7})
RecipeBox.create({user_id: 1, recipe_id: 12})
RecipeBox.create({user_id: 1, recipe_id: 14})
RecipeBox.create({user_id: 1, recipe_id: 18})
RecipeBox.create({user_id: 1, recipe_id: 11})
RecipeBox.create({user_id: 1, recipe_id: 13})
RecipeBox.create({user_id: 1, recipe_id: 9})
RecipeBox.create({user_id: 1, recipe_id: 8})