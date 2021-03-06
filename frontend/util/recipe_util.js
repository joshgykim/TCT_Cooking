export const fetchRecipe = recipeId => (
  $.ajax({
    url: `/api/recipes/${recipeId}`
  })
)

export const fetchRecipes = mode => (
  $.ajax({
    url: "/api/recipes",
    data: { mode: mode }
  })
)

export const postRecipe = recipe => (
  $.ajax({
    url: "/api/recipes",
    method: "post",
    data: { recipe }
  })
)

export const postIngredient = ingredient => (
  $.ajax({
    url: "/api/ingredients",
    method: "post",
    data: { ingredient }
  })
)

export const searchRecipes = searchString => (
  $.ajax({
    url: "/api/recipes",
    data: { mode: "Search", searchFor: searchString }
  })
)

export const postRating = ratingData => (
  $.ajax({
    url: "/api/ratings",
    method: "post",
    data: { ratingData }
  })
)