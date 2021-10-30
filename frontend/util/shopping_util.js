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