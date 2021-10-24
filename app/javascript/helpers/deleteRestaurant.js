const csrf = document
  .querySelector("meta[name='csrf-token']")
  .getAttribute("content");

const deleteRestaurant = (restaurantId) => {
  fetch(`/restaurants/${restaurantId}`, {
    method: "DELETE",
    "X-CSRF-Token": csrf,
  }).catch((error) => {
    console.error("There was an error!", error);
  });
};

export default deleteRestaurant;
