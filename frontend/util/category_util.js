export const fetchCategory = categoryId => {
  return $.ajax({
    url: `/api/categories/${categoryId}`,
    method: 'get'
  })
}