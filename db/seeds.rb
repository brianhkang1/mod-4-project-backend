brian = User.create(name: "Brian", fav_food: "korean bbq", worst_food: "broccoli", avatar_url: "")
bruno = User.create(name: "Bruno", fav_food: "protein shake", worst_food: "marshmellow", avatar_url: "")


fried_rice = Recipe.create(name: "Fried Rice", time: "30 minutes", ingredients: "rice, eggs, onions, soy sauce, sesame seed oil, spam", instructions: "cook rice, cook eggs spam and onions together, mix all cooked ingredients together, add soy sauce and sesame seed oil.", user_id: 1)

pasta = Recipe.create(name: "Traditional Pasta", time: "20 minutes", ingredients: "marinara sauce, ground beef, onion, mushroom, spaghetti", instructions: "boil water, place spaghetti in boiled water for 7 minutes, cut and cook onions and mushrooms, mix spaghetti, cooked veggies, and marinara sauce.", user_id: 2)


SavedRecipe.create(user_id: 1, recipe_id: 2)
SavedRecipe.create(user_id: 2, recipe_id: 1)
