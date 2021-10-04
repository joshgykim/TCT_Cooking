export const fetchAuthor = authorId => {
  return $.ajax({
    url: `/api/authors/${authorId}`,
    method: 'get'
  })
}