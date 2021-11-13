import React, { useState, useEffect } from "react";
import TableView from "./restaurantViews/TableView";
import CardView from "./restaurantViews/CardView";
import deleteRestaurant from "../helpers/deleteRestaurant";
import transformRatings from "../helpers/transformRatings";

const RestaurantView = (props) => {
  const { isAdmin, allRestaurants } = props;

  const [viewType, setViewType] = useState("card");
  const [restaurants, setRestaurants] = useState(allRestaurants);

  useEffect(() => {
    setRestaurants(transformRatings(restaurants))
  }, [])

  const deleteRestaurantFunction = (restaurantId) => {
    deleteRestaurant(restaurantId);
    setRestaurants(
      restaurants.filter((restaurant) => restaurant.id != restaurantId)
    );
  };

  return (
    <div id="restaurant-view">
      <div className="content">
        <span
          className="icon is-size-3 ml-3 has-text-dark is-clickable"
          onClick={() => setViewType("card")}
        >
          <i className="fas fa-table"></i>
        </span>
        <span
          className="icon is-size-3 ml-5 has-text-dark is-clickable"
          onClick={() => setViewType("table")}
        >
          <i className="fas fa-list"></i>
        </span>
      </div>
      {viewType === "table" ? (
        <TableView
          restaurants={restaurants}
          isAdmin={isAdmin}
          deleteRestaurant={deleteRestaurantFunction}
        />
      ) : (
        <CardView
          restaurants={restaurants}
          isAdmin={isAdmin}
          deleteRestaurant={deleteRestaurantFunction}
        />
      )}
    </div>
  );
};

export default RestaurantView;
