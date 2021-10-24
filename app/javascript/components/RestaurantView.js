import React, { useState } from "react";
import deleteRestaurant from "../helpers/deleteRestaurant";
import TableView from "./restaurantViews/TableView";
import CardView from "./restaurantViews/CardView";

const RestaurantView = (props) => {
  const { isAdmin } = props;

  const [viewType, setViewType] = useState("card");
  const [restaurants, setrestaurants] = useState(props.restaurants);

  const deleteRestaurantFunction = (restaurantId) => {
    deleteRestaurant(restaurantId);
    setrestaurants(
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
