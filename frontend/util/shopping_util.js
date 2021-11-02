export const fetchShoppings = userId => (
  $.ajax({
    url: `/api/shoppings/${userId}`,
  })
)

export const postShopping = recipeId => (
  $.ajax({
    url: "/api/shoppings",
    method: "post",
    data: { recipeId }
  })
)

export const destroyShopping = recipeId => (
  $.ajax({
    url: `/api/shoppings/${recipeId}`,
    method: "delete"
  })
)

export const patchShopping = data => (
  $.ajax({
    url: `/api/shoppings/${data.recipeId}`,
    method: "patch",
    data: { data }
  })
)