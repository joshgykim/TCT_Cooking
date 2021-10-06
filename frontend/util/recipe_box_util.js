export const postRecipeBox = recipe_box => (
  $.ajax({
    url: "/api/recipe_boxes",
    method: "post",
    data: { recipe_box }
  })
)