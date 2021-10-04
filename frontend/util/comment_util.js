export const postComment = comment => (
  $.ajax({
    url: '/api/comments',
    method: 'post',
    data: { comment }
  })
)

export const patchComment = comment => (
  $.ajax({
    url: `/api/comments/${comment.id}`,
    method: 'patch',
    data: { comment }
  })
)