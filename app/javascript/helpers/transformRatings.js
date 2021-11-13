const transformRatings = (restaurants) => {
  const transformedRestaurants = restaurants.map((restaurant) => {
    switch (restaurant.rating) {
      case 1:
        restaurant.rating = "avoid";
        break;
      case 2:
        restaurant.rating = "meh";
        break;
      case 3:
        restaurant.rating = "good";
        break;
      case 4:
        restaurant.rating = "great";
        break;
      case 5:
        restaurant.rating = "AMAZE";
        break;
      default:
        break;
    }
    return restaurant;
  });

  return transformedRestaurants;
};

export default transformRatings;
