export const postComment = comment => (
  $.ajax({
    url: '/api/comments',
    method: 'post',
    data: { comment }
  })
)