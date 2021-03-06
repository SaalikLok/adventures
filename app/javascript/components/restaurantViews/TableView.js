import React from "react";
import RestaurantTableRow from "./RestaurantTableRow";

const TableView = (props) => {
  const { restaurants, isAdmin, deleteRestaurant } = props;

  return (
    <table className="table is-fullwidth">
      <thead>
        <tr>
          <th>Name</th>
          <th>Rating</th>
          <th>Cuisine</th>
          <th>Updated</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        {restaurants.map((restaurant) => {
          return (
            <RestaurantTableRow
              key={restaurant.id}
              id={restaurant.id}
              name={restaurant.name}
              rating={restaurant.rating}
              cuisine={restaurant.cuisine}
              updated_at={restaurant.updated_at}
              description={restaurant.description}
              isAdmin={isAdmin}
              deleteRestaurant={deleteRestaurant}
            />
          );
        })}
      </tbody>
    </table>
  );
};

export default TableView;
