export const postRecipeBox = recipe_box => (
  $.ajax({
    url: "/api/recipe_boxes",
    method: "post",
    data: { recipe_box }
  })
)

export const destroyRecipeBox = recipe_box => (
  $.ajax({
    url: "/api/recipe_boxes/0",
    method: "delete",
    data: { recipe_box }
  })
)