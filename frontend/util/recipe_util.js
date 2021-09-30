export const fetchRecipe = recipeId => (
  $.ajax({
    url: `/api/recipes/${recipeId}`
  })
)