export const fetchCollection = collectionId => (
  $.ajax({
    url: `/api/collections/${collectionId}`
  })
)