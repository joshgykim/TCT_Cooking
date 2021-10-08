import { fetchCollection } from "../util/collection_util";

export const RECEIVE_COLLECTION = "RECEIVE_COLLECTION";

const receiveCollection = ({ collection, recipes }) => ({
  type: RECEIVE_COLLECTION,
  collection,
  recipes
});

export const getCollectionData = (collectionId) => dispatch => fetchCollection(collectionId)
  .then( collectionData => dispatch(receiveCollection(collectionData)) )