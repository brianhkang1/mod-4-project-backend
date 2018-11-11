User.destroy_all
Recipe.destroy_all
SavedRecipe.destroy_all
#####################################

brian = User.create(username: "Brian", password: "password1", fav_food: "korean bbq", worst_food: "broccoli")
bruno = User.create(username: "Bruno", password: "password2", fav_food: "protein shake", worst_food: "marshmellow")

fried_rice = Recipe.create(name: "Fried Rice", time: "30 minutes", cost: 5, image: {"url":"/uploads/recipe/image/8/phil-hearing-1141657-unsplash.jpg"}, summary: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.", ingredients: "rice&&eggs&&onions&&soy sauce&&sesame seed oil&&spam", instructions: "cook rice&&cook eggs spam and onions together&&mix all cooked ingredients together&&add soy sauce and sesame seed oil", user_id: 1)

pasta = Recipe.create(name: "Traditional Pasta", time: "20 minutes", cost: 5, image: {"url":"/uploads/recipe/image/8/phil-hearing-1141657-unsplash.jpg"}, summary: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Accompanied by English versions from the 1914 translation by H. Rackham.", ingredients: "marinara sauce&&ground beef&&onion&&mushroom&&spaghetti", instructions: "boil water&&place spaghetti in boiled water for 7 minutes&&cut and cook onions and mushrooms&&mix spaghetti, cooked veggies, and marinara sauce.", user_id: 2)


SavedRecipe.create(user_id: 1, recipe_id: 2)
SavedRecipe.create(user_id: 2, recipe_id: 1)
